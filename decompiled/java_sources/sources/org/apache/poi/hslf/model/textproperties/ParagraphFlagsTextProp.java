package org.apache.poi.hslf.model.textproperties;

/* loaded from: classes12.dex */
public final class ParagraphFlagsTextProp extends BitMaskTextProp {
    public static final int BULLET_HARDCOLOR_IDX = 2;
    public static final int BULLET_HARDFONT_IDX = 1;
    public static final int BULLET_HARDSIZE_IDX = 4;
    public static final int BULLET_IDX = 0;
    public static final String NAME = "paragraph_flags";

    public ParagraphFlagsTextProp() {
        super(2, 15, NAME, "bullet", "bullet.hardfont", "bullet.hardcolor", "bullet.hardsize");
    }

    public ParagraphFlagsTextProp(ParagraphFlagsTextProp paragraphFlagsTextProp) {
        super(paragraphFlagsTextProp);
    }

    @Override // org.apache.poi.hslf.model.textproperties.BitMaskTextProp, org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public ParagraphFlagsTextProp copy() {
        return new ParagraphFlagsTextProp(this);
    }
}
