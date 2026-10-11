package org.apache.poi.hslf.model.textproperties;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;

/* loaded from: classes12.dex */
public class WrapFlagsTextProp extends BitMaskTextProp {
    public static final int CHAR_WRAP_IDX = 0;
    public static final String NAME = "wrapFlags";
    public static final int OVERFLOW_IDX = 2;
    public static final int WORD_WRAO_IDX = 1;

    public WrapFlagsTextProp() {
        super(2, ArchiveFormatCode.ARCHIVE_FORMAT_7ZIP, NAME, "charWrap", "wordWrap", "overflow");
    }

    public WrapFlagsTextProp(WrapFlagsTextProp wrapFlagsTextProp) {
        super(wrapFlagsTextProp);
    }

    @Override // org.apache.poi.hslf.model.textproperties.BitMaskTextProp, org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public WrapFlagsTextProp copy() {
        return new WrapFlagsTextProp(this);
    }
}
