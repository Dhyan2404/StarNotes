package com.onyx.android.sdk.universal.p042ui.data;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b#\u0010\tR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "a", "Ljava/util/List;", "getNoteImportList", "()Ljava/util/List;", "setNoteImportList", "(Ljava/util/List;)V", "noteImportList", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "b", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getCloudProvider", "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "setCloudProvider", "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "cloudProvider", "", "c", "Ljava/lang/Throwable;", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "throwable", "", "d", Constants.HASIDCALL_INDEX_SIG, "getDeleteLocalFile", Constants.BOOLEAN_VALUE_SIG, "setDeleteLocalFile", "(Z)V", "deleteLocalFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RestoreContext {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<NoteImportArgs> noteImportList;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BaseCloudStorageProvider cloudProvider;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean deleteLocalFile;

    public RestoreContext(@NotNull List<NoteImportArgs> noteImportList) {
        Intrinsics.checkNotNullParameter(noteImportList, "noteImportList");
        this.noteImportList = noteImportList;
        this.deleteLocalFile = true;
    }

    @Nullable
    public final BaseCloudStorageProvider getCloudProvider() {
        return this.cloudProvider;
    }

    public final boolean getDeleteLocalFile() {
        return this.deleteLocalFile;
    }

    @NotNull
    public final List<NoteImportArgs> getNoteImportList() {
        return this.noteImportList;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final void setCloudProvider(@Nullable BaseCloudStorageProvider baseCloudStorageProvider) {
        this.cloudProvider = baseCloudStorageProvider;
    }

    public final void setDeleteLocalFile(boolean z) {
        this.deleteLocalFile = z;
    }

    public final void setNoteImportList(@NotNull List<NoteImportArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.noteImportList = list;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }
}
