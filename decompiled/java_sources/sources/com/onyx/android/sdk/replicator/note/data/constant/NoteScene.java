package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;", "", "()V", "DRAFT_SCENE", "", "INVALID_SCENE", "MAX_SCENE", "PDF_SCRIBBLE_SCENE", "RICH_TEXT_SCENE", "SCRIBBLE_SCENE", "isDraft", "", "scene", "isNoteScene", "isPdfScribbleScene", "isRichTextScene", "isScribbleScene", "isValidScene", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteScene {
    public static final int DRAFT_SCENE = 2;

    @NotNull
    public static final NoteScene INSTANCE = new NoteScene();
    public static final int INVALID_SCENE = -1;
    public static final int MAX_SCENE = 3;
    public static final int PDF_SCRIBBLE_SCENE = 3;
    public static final int RICH_TEXT_SCENE = 1;
    public static final int SCRIBBLE_SCENE = 0;

    private NoteScene() {
    }

    public final boolean isDraft(int scene) {
        return scene == 2;
    }

    public final boolean isNoteScene(int scene) {
        return scene == -1 || scene == 0 || scene == 1 || scene == 2;
    }

    public final boolean isPdfScribbleScene(int scene) {
        return scene == 3;
    }

    public final boolean isRichTextScene(int scene) {
        return scene == 1;
    }

    public final boolean isScribbleScene(int scene) {
        return scene == 0;
    }

    public final boolean isValidScene(int scene) {
        return scene >= 0 && scene < 4;
    }
}
