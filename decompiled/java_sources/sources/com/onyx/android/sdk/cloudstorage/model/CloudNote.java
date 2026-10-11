package com.onyx.android.sdk.cloudstorage.model;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\"\u0010#R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "", "", "a", Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", "b", "getGuid", "setGuid", "guid", "Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;", "getResource", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;", "setResource", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;)V", "resource", "d", "getExtra", "setExtra", "extra", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "e", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "getNoteBook", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "setNoteBook", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V", "noteBook", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudNote {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String title;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String guid;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public CloudResource resource;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String extra;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public CloudNoteBook noteBook;

    public CloudNote() {
        this(null, null, null, null, null, 31, null);
    }

    @Nullable
    public final String getExtra() {
        return this.extra;
    }

    @Nullable
    public final String getGuid() {
        return this.guid;
    }

    @Nullable
    public final CloudNoteBook getNoteBook() {
        return this.noteBook;
    }

    @Nullable
    public final CloudResource getResource() {
        return this.resource;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setExtra(@Nullable String str) {
        this.extra = str;
    }

    public final void setGuid(@Nullable String str) {
        this.guid = str;
    }

    public final void setNoteBook(@Nullable CloudNoteBook cloudNoteBook) {
        this.noteBook = cloudNoteBook;
    }

    public final void setResource(@Nullable CloudResource cloudResource) {
        this.resource = cloudResource;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public CloudNote(@Nullable String str, @Nullable String str2, @Nullable CloudResource cloudResource, @Nullable String str3, @Nullable CloudNoteBook cloudNoteBook) {
        this.title = str;
        this.guid = str2;
        this.resource = cloudResource;
        this.extra = str3;
        this.noteBook = cloudNoteBook;
    }

    public /* synthetic */ CloudNote(String str, String str2, CloudResource cloudResource, String str3, CloudNoteBook cloudNoteBook, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : cloudResource, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : cloudNoteBook);
    }
}
