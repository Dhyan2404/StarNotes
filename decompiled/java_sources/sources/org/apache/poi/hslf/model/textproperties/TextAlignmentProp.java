package org.apache.poi.hslf.model.textproperties;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.model.textproperties.TextAlignmentProp;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class TextAlignmentProp extends TextProp {
    public static final int CENTER = 1;
    public static final int DISTRIBUTED = 4;
    public static final int JUSTIFY = 3;
    public static final int JUSTIFYLOW = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 2;
    public static final int THAIDISTRIBUTED = 5;

    public TextAlignmentProp() {
        super(2, 2048, CellUtil.ALIGNMENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.lbn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TextAlignmentProp.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, gon.f71264Q, new Supplier() { // from class: com.sunia.HTREnginev2.mbn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextAlignmentProp.this.getTextAlign();
            }
        });
    }

    public TextParagraph.TextAlign getTextAlign() {
        int value = getValue();
        return value != 1 ? value != 2 ? value != 3 ? value != 4 ? value != 5 ? TextParagraph.TextAlign.LEFT : TextParagraph.TextAlign.THAI_DIST : TextParagraph.TextAlign.DIST : TextParagraph.TextAlign.JUSTIFY : TextParagraph.TextAlign.RIGHT : TextParagraph.TextAlign.CENTER;
    }

    public TextAlignmentProp(TextAlignmentProp textAlignmentProp) {
        super(textAlignmentProp);
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public TextAlignmentProp copy() {
        return new TextAlignmentProp(this);
    }
}
