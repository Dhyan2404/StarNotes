package com.onyx.android.sdk.replicator.note.data.info;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;", "", CouchFieldKey.KEY_ACTIVE_SCENE, "", "(I)V", "getActiveScene", "()I", "setActiveScene", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class NoteExtraInfo {
    private int activeScene;

    public NoteExtraInfo() {
        this(0, 1, null);
    }

    public static /* synthetic */ NoteExtraInfo copy$default(NoteExtraInfo noteExtraInfo, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = noteExtraInfo.activeScene;
        }
        return noteExtraInfo.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getActiveScene() {
        return this.activeScene;
    }

    @NotNull
    public final NoteExtraInfo copy(int activeScene) {
        return new NoteExtraInfo(activeScene);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NoteExtraInfo) && this.activeScene == ((NoteExtraInfo) other).activeScene;
    }

    public final int getActiveScene() {
        return this.activeScene;
    }

    public int hashCode() {
        return Integer.hashCode(this.activeScene);
    }

    public final void setActiveScene(int i) {
        this.activeScene = i;
    }

    @NotNull
    public String toString() {
        return "NoteExtraInfo(activeScene=" + this.activeScene + ')';
    }

    public NoteExtraInfo(int i) {
        this.activeScene = i;
    }

    public /* synthetic */ NoteExtraInfo(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? -1 : i);
    }
}
