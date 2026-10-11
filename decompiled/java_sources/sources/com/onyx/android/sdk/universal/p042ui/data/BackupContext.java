package com.onyx.android.sdk.universal.p042ui.data;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u0003\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\bX\u0010YJ\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\b\u001a\u00020\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u0006\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010&\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\"\u0010*\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u001e\u001a\u0004\b(\u0010 \"\u0004\b)\u0010\"R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00106\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u001e\u001a\u0004\b4\u0010 \"\u0004\b5\u0010\"R\"\u0010:\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u001e\u001a\u0004\b8\u0010 \"\u0004\b9\u0010\"R\"\u0010>\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010\u001e\u001a\u0004\b<\u0010 \"\u0004\b=\u0010\"R\"\u0010B\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u001e\u001a\u0004\b@\u0010 \"\u0004\bA\u0010\"R\"\u0010F\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010\u001e\u001a\u0004\bD\u0010 \"\u0004\bE\u0010\"R.\u0010O\u001a\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020+0G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR(\u0010S\u001a\b\u0012\u0004\u0012\u00020H0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010\u0018\u001a\u0004\bQ\u0010\u001a\"\u0004\bR\u0010\u001bR\"\u0010W\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010\u0011\u001a\u0004\bU\u0010\u0013\"\u0004\bV\u0010\u0015¨\u0006Z"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "list", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "setNoteExportList", "", "isError", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "a", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getNoteQueryArgs", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "noteQueryArgs", "", "b", Constants.STRING_SIG, "getBackupFilePath", "()Ljava/lang/String;", "setBackupFilePath", "(Ljava/lang/String;)V", "backupFilePath", "c", "Ljava/util/List;", "getNoteExportList", "()Ljava/util/List;", "(Ljava/util/List;)V", "noteExportList", "d", Constants.HASIDCALL_INDEX_SIG, "isAutoBackup", Constants.BOOLEAN_VALUE_SIG, "setAutoBackup", "(Z)V", "e", "getUpdateLastTime", "setUpdateLastTime", "updateLastTime", C6997f.f39671c, "getCloudBackup", "setCloudBackup", CouchFieldKey.KEY_CLOUD_BACKUP, "", C6998g.f39679a, "Ljava/lang/Throwable;", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "throwable", C6999h.f39688c, "getDeleteLocalFile", "setDeleteLocalFile", "deleteLocalFile", "i", "getExportAllFolder", "setExportAllFolder", "exportAllFolder", "j", "getExportAllTag", "setExportAllTag", "exportAllTag", C4921e.f26537n, "getExportFont", "setExportFont", "exportFont", "l", "getExportStashArchivedData", "setExportStashArchivedData", "exportStashArchivedData", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "m", "Ljava/util/concurrent/ConcurrentHashMap;", "getFailedProviderMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "setFailedProviderMap", "(Ljava/util/concurrent/ConcurrentHashMap;)V", "failedProviderMap", GoogleApiAvailabilityLight.f29016b, "getProviders", "setProviders", "providers", C4921e.f26528e, "getDocumentId", "setDocumentId", "documentId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBackupContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n1747#2,3:38\n*S KotlinDebug\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n*L\n28#1:36,2\n33#1:38,3\n*E\n"})
/* loaded from: classes8.dex */
public final class BackupContext {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CBQueryArgs noteQueryArgs;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String backupFilePath;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<NoteExportArgs> noteExportList;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isAutoBackup;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean updateLastTime;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean cloudBackup;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean deleteLocalFile;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean exportAllFolder;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean exportAllTag;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean exportFont;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean exportStashArchivedData;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ConcurrentHashMap<Provider, Throwable> failedProviderMap;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public List<? extends Provider> providers;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public String documentId;

    public BackupContext(@NotNull CBQueryArgs noteQueryArgs, @NotNull String backupFilePath) {
        List<NoteExportArgs> emptyList;
        List<? extends Provider> emptyList2;
        Intrinsics.checkNotNullParameter(noteQueryArgs, "noteQueryArgs");
        Intrinsics.checkNotNullParameter(backupFilePath, "backupFilePath");
        this.noteQueryArgs = noteQueryArgs;
        this.backupFilePath = backupFilePath;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.noteExportList = emptyList;
        this.updateLastTime = true;
        this.deleteLocalFile = true;
        this.exportStashArchivedData = true;
        this.failedProviderMap = new ConcurrentHashMap<>();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.providers = emptyList2;
        this.documentId = "";
    }

    @NotNull
    public final String getBackupFilePath() {
        return this.backupFilePath;
    }

    public final boolean getCloudBackup() {
        return this.cloudBackup;
    }

    public final boolean getDeleteLocalFile() {
        return this.deleteLocalFile;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    public final boolean getExportAllFolder() {
        return this.exportAllFolder;
    }

    public final boolean getExportAllTag() {
        return this.exportAllTag;
    }

    public final boolean getExportFont() {
        return this.exportFont;
    }

    public final boolean getExportStashArchivedData() {
        return this.exportStashArchivedData;
    }

    @NotNull
    public final ConcurrentHashMap<Provider, Throwable> getFailedProviderMap() {
        return this.failedProviderMap;
    }

    @NotNull
    public final List<NoteExportArgs> getNoteExportList() {
        return this.noteExportList;
    }

    @NotNull
    public final CBQueryArgs getNoteQueryArgs() {
        return this.noteQueryArgs;
    }

    @NotNull
    public final List<Provider> getProviders() {
        return this.providers;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final boolean getUpdateLastTime() {
        return this.updateLastTime;
    }

    /* renamed from: isAutoBackup, reason: from getter */
    public final boolean getIsAutoBackup() {
        return this.isAutoBackup;
    }

    public final boolean isError() {
        boolean z;
        if (this.throwable != null) {
            return true;
        }
        List<NoteExportArgs> list = this.noteExportList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (((NoteExportArgs) it2.next()).getNoteProgressInfo().isError()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    public final void setAutoBackup(boolean z) {
        this.isAutoBackup = z;
    }

    public final void setBackupFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.backupFilePath = str;
    }

    public final void setCloudBackup(boolean z) {
        this.cloudBackup = z;
    }

    public final void setDeleteLocalFile(boolean z) {
        this.deleteLocalFile = z;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setExportAllFolder(boolean z) {
        this.exportAllFolder = z;
    }

    public final void setExportAllTag(boolean z) {
        this.exportAllTag = z;
    }

    public final void setExportFont(boolean z) {
        this.exportFont = z;
    }

    public final void setExportStashArchivedData(boolean z) {
        this.exportStashArchivedData = z;
    }

    public final void setFailedProviderMap(@NotNull ConcurrentHashMap<Provider, Throwable> concurrentHashMap) {
        Intrinsics.checkNotNullParameter(concurrentHashMap, "<set-?>");
        this.failedProviderMap = concurrentHashMap;
    }

    /* renamed from: setNoteExportList, reason: collision with other method in class */
    public final void m72416setNoteExportList(@NotNull List<NoteExportArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.noteExportList = list;
    }

    public final void setProviders(@NotNull List<? extends Provider> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.providers = list;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    public final void setUpdateLastTime(boolean z) {
        this.updateLastTime = z;
    }

    @NotNull
    public final List<NoteExportArgs> setNoteExportList(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<NoteExportArgs> noteExportArgsList = NoteExportArgs.INSTANCE.toNoteExportArgsList(list);
        this.noteExportList = noteExportArgsList;
        Iterator<T> it2 = noteExportArgsList.iterator();
        while (it2.hasNext()) {
            ((NoteExportArgs) it2.next()).setExportStashArchivedData(this.exportStashArchivedData);
        }
        return this.noteExportList;
    }

    public /* synthetic */ BackupContext(CBQueryArgs cBQueryArgs, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cBQueryArgs, (i & 2) != 0 ? "" : str);
    }
}
