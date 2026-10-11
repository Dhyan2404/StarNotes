package org.apache.poi.hslf.model.textproperties;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.model.textproperties.FontAlignmentProp;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class FontAlignmentProp extends TextProp {
    public static final int BASELINE = 0;
    public static final int BOTTOM = 3;
    public static final int CENTER = 2;
    public static final String NAME = "fontAlign";
    public static final int TOP = 1;

    public FontAlignmentProp() {
        super(2, 65536, NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public TextParagraph.FontAlign getFontAlign() {
        int value = getValue();
        return value != 0 ? value != 1 ? value != 2 ? value != 3 ? TextParagraph.FontAlign.AUTO : TextParagraph.FontAlign.BOTTOM : TextParagraph.FontAlign.CENTER : TextParagraph.FontAlign.TOP : TextParagraph.FontAlign.BASELINE;
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.zog
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FontAlignmentProp.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, NAME, new Supplier() { // from class: com.sunia.HTREnginev2.apg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontAlignmentProp.this.getFontAlign();
            }
        });
    }

    public FontAlignmentProp(FontAlignmentProp fontAlignmentProp) {
        super(fontAlignmentProp);
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public FontAlignmentProp copy() {
        return new FontAlignmentProp(this);
    }
}
