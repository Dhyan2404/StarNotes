package com.onyx.galaxy.note.account.data;

import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/data/BindType;", "", "typeValue", "", "(Ljava/lang/String;II)V", "getTypeValue", "()I", UserCenterEvents.BIND_PHONE, UserCenterEvents.BIND_EMAIL, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class BindType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BindType[] $VALUES;
    private final int typeValue;
    public static final BindType BIND_PHONE = new BindType(UserCenterEvents.BIND_PHONE, 0, 1);
    public static final BindType BIND_EMAIL = new BindType(UserCenterEvents.BIND_EMAIL, 1, 2);

    private static final /* synthetic */ BindType[] $values() {
        return new BindType[]{BIND_PHONE, BIND_EMAIL};
    }

    static {
        BindType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private BindType(String str, int i, int i2) {
        this.typeValue = i2;
    }

    @NotNull
    public static EnumEntries<BindType> getEntries() {
        return $ENTRIES;
    }

    public static BindType valueOf(String str) {
        return (BindType) Enum.valueOf(BindType.class, str);
    }

    public static BindType[] values() {
        return (BindType[]) $VALUES.clone();
    }

    public final int getTypeValue() {
        return this.typeValue;
    }
}
