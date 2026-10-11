package org.apache.poi.hslf.model.textproperties;

import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;

/* loaded from: classes12.dex */
public class CharFlagsTextProp extends BitMaskTextProp {
    public static final int BOLD_IDX = 0;
    public static final int ENABLE_NUMBERING_1_IDX = 11;
    public static final int ENABLE_NUMBERING_2_IDX = 12;
    public static final int ITALIC_IDX = 1;
    public static final String NAME = "char_flags";
    public static final int RELIEF_IDX = 9;
    public static final int RESET_NUMBERING_IDX = 10;
    public static final int SHADOW_IDX = 4;
    public static final int STRIKETHROUGH_IDX = 8;
    public static final int UNDERLINE_IDX = 2;

    public CharFlagsTextProp() {
        super(2, 65535, NAME, "bold", "italic", "underline", "unused1", "shadow", "fehint", "unused2", "kumi", HWRGestureWithContext.GESTURE_STRIKE_THROUGH, "emboss", "pp9rt_1", "pp9rt_2", "pp9rt_3", "pp9rt_4", "unused4_1", "unused4_2");
    }

    public CharFlagsTextProp(CharFlagsTextProp charFlagsTextProp) {
        super(charFlagsTextProp);
    }

    @Override // org.apache.poi.hslf.model.textproperties.BitMaskTextProp, org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public CharFlagsTextProp copy() {
        return new CharFlagsTextProp(this);
    }
}
