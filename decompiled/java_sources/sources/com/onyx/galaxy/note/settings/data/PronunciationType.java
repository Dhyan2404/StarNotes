package com.onyx.galaxy.note.settings.data;

import androidx.annotation.StringRes;
import androidx.core.content.FileProvider;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/PronunciationType;", "", "type", "", FileProvider.f5230t, "(Ljava/lang/String;III)V", "getDisplayName", "()I", "setDisplayName", "(I)V", "getType", "setType", "BRITISH", "AMERICAN", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PronunciationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PronunciationType[] $VALUES;
    private int displayName;
    private int type;
    public static final PronunciationType BRITISH = new PronunciationType("BRITISH", 0, 0, C10651R.string.british_pronunciation);
    public static final PronunciationType AMERICAN = new PronunciationType("AMERICAN", 1, 1, C10651R.string.american_pronunciation);

    private static final /* synthetic */ PronunciationType[] $values() {
        return new PronunciationType[]{BRITISH, AMERICAN};
    }

    static {
        PronunciationType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PronunciationType(String str, @StringRes int i, int i2, int i3) {
        this.type = i2;
        this.displayName = i3;
    }

    @NotNull
    public static EnumEntries<PronunciationType> getEntries() {
        return $ENTRIES;
    }

    public static PronunciationType valueOf(String str) {
        return (PronunciationType) Enum.valueOf(PronunciationType.class, str);
    }

    public static PronunciationType[] values() {
        return (PronunciationType[]) $VALUES.clone();
    }

    public final int getDisplayName() {
        return this.displayName;
    }

    public final int getType() {
        return this.type;
    }

    public final void setDisplayName(int i) {
        this.displayName = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
