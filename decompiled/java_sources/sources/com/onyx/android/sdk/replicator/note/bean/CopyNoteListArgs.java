package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015J\u000e\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0015J\u000e\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u0015J\f\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001d\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "", "()V", "argsList", "", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "getArgsList", "()Ljava/util/List;", "setArgsList", "(Ljava/util/List;)V", "copyAllFolder", "", "getCopyAllFolder", Constants.BOOLEAN_VALUE_SIG, "setCopyAllFolder", "(Z)V", "copyAllTag", "getCopyAllTag", "setCopyAllTag", "exportTagMap", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "getExportTagMap", "()Ljava/util/Map;", "srcDirFilePath", "getSrcDirFilePath", "()Ljava/lang/String;", "setSrcDirFilePath", "(Ljava/lang/String;)V", "addArgs", "", "copyNoteArgs", "getDstDocId", "srcDocId", "getDstPageId", "srcPageId", "getDstShapeId", "srcShapeId", "getExcerptCollectionList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCopyNoteListArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1855#2,2:56\n1855#2,2:58\n1855#2,2:60\n1855#2,2:62\n*S KotlinDebug\n*F\n+ 1 CopyNoteListArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs\n*L\n22#1:56,2\n29#1:58,2\n36#1:60,2\n46#1:62,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyNoteListArgs {
    private boolean copyAllFolder;
    private boolean copyAllTag;

    @NotNull
    private List<CopyNoteArgs> argsList = new ArrayList();

    @NotNull
    private String srcDirFilePath = "";

    @NotNull
    private final Map<String, SyncTagModel> exportTagMap = new LinkedHashMap();

    public final void addArgs(@NotNull CopyNoteArgs copyNoteArgs) {
        Intrinsics.checkNotNullParameter(copyNoteArgs, "copyNoteArgs");
        this.argsList.add(copyNoteArgs);
    }

    @NotNull
    public final List<CopyNoteArgs> getArgsList() {
        return this.argsList;
    }

    public final boolean getCopyAllFolder() {
        return this.copyAllFolder;
    }

    public final boolean getCopyAllTag() {
        return this.copyAllTag;
    }

    @NotNull
    public final String getDstDocId(@NotNull String srcDocId) {
        Intrinsics.checkNotNullParameter(srcDocId, "srcDocId");
        for (CopyNoteArgs copyNoteArgs : this.argsList) {
            if (Intrinsics.areEqual(srcDocId, copyNoteArgs.getSrcDocId())) {
                return copyNoteArgs.getDstDocId();
            }
        }
        return srcDocId;
    }

    @NotNull
    public final String getDstPageId(@NotNull String srcPageId) {
        Intrinsics.checkNotNullParameter(srcPageId, "srcPageId");
        Iterator<T> it2 = this.argsList.iterator();
        while (it2.hasNext()) {
            String str = ((CopyNoteArgs) it2.next()).getPageIdCopyMap().get(srcPageId);
            if (StringKt.isNotBlank(str)) {
                return str;
            }
        }
        return srcPageId;
    }

    @NotNull
    public final String getDstShapeId(@NotNull String srcShapeId) {
        Intrinsics.checkNotNullParameter(srcShapeId, "srcShapeId");
        Iterator<T> it2 = this.argsList.iterator();
        while (it2.hasNext()) {
            String str = ((CopyNoteArgs) it2.next()).getShapeIdCopyMap().get(srcShapeId);
            if (StringKt.isNotBlank(str)) {
                return str;
            }
        }
        return srcShapeId;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.argsList.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(((CopyNoteArgs) it2.next()).getExcerptCollectionList());
        }
        return arrayList;
    }

    @NotNull
    public final Map<String, SyncTagModel> getExportTagMap() {
        return this.exportTagMap;
    }

    @NotNull
    public final String getSrcDirFilePath() {
        return this.srcDirFilePath;
    }

    public final void setArgsList(@NotNull List<CopyNoteArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.argsList = list;
    }

    public final void setCopyAllFolder(boolean z) {
        this.copyAllFolder = z;
    }

    public final void setCopyAllTag(boolean z) {
        this.copyAllTag = z;
    }

    public final void setSrcDirFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.srcDirFilePath = str;
    }
}
