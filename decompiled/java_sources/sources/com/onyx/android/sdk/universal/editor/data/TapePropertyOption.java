package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;", "", "()V", "getTapeType", "", "isShowAllTape", "", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TapePropertyOption {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TAPE_LINE_NAME = "straight_line_tape_pen";

    @NotNull
    public static final String TAPE_RECTANGLE_NAME = "rectangle_tape_pen";
    public static final int TAPE_TYPE_FREE = 2;
    public static final int TAPE_TYPE_LINE = 0;
    public static final int TAPE_TYPE_RECTANGLE = 1;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;", "", "()V", "TAPE_LINE_NAME", "", "TAPE_RECTANGLE_NAME", "TAPE_TYPE_FREE", "", "TAPE_TYPE_LINE", "TAPE_TYPE_RECTANGLE", "getTapeNameByType", "type", "getTapeTypeOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "toSubShapeType", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getTapeNameByType(int type) {
            return (type == 0 || type != 1) ? TapePropertyOption.TAPE_LINE_NAME : TapePropertyOption.TAPE_RECTANGLE_NAME;
        }

        @NotNull
        public final IntOption getTapeTypeOption() {
            return new IntOption(MMKVNote.INSTANCE.getMMKV(), MMKVNote.ONYX_NOTE_EDIT_TAPE_TYPE, 0);
        }

        public final int toSubShapeType(int type) {
            if (type != 0) {
                return type != 1 ? 36 : 1;
            }
            return 7;
        }

        private Companion() {
        }
    }

    public final int getTapeType() {
        return INSTANCE.getTapeTypeOption().get();
    }

    public final boolean isShowAllTape() {
        return TapeShape.INSTANCE.isAllTapeClose();
    }
}
