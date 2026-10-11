package org.apache.poi.ss.format;

import java.util.Locale;
import java.util.regex.Matcher;
import org.apache.poi.ss.format.CellFormatPart;

/* loaded from: classes13.dex */
public class CellTextFormatter extends CellFormatter {
    static final CellFormatter SIMPLE_TEXT = new CellTextFormatter("@");
    private final String desc;
    private final int[] textPos;

    public CellTextFormatter(String str) {
        super(str);
        final int[] iArr = new int[1];
        String stringBuffer = CellFormatPart.parseFormat(str, CellFormatType.TEXT, new CellFormatPart.PartHandler() { // from class: org.apache.poi.ss.format.a
            @Override // org.apache.poi.ss.format.CellFormatPart.PartHandler
            public final String handlePart(Matcher matcher, String str2, CellFormatType cellFormatType, StringBuffer stringBuffer2) {
                String lambda$new$0;
                lambda$new$0 = CellTextFormatter.lambda$new$0(iArr, matcher, str2, cellFormatType, stringBuffer2);
                return lambda$new$0;
            }
        }).toString();
        this.desc = stringBuffer;
        this.textPos = new int[iArr[0]];
        int length = stringBuffer.length() - 1;
        int i = 0;
        while (true) {
            int[] iArr2 = this.textPos;
            if (i >= iArr2.length) {
                return;
            }
            iArr2[i] = this.desc.lastIndexOf(0, length);
            length = this.textPos[i] - 1;
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$new$0(int[] iArr, Matcher matcher, String str, CellFormatType cellFormatType, StringBuffer stringBuffer) {
        if (!str.equals("@")) {
            return null;
        }
        iArr[0] = iArr[0] + 1;
        return "\u0000";
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public void formatValue(StringBuffer stringBuffer, Object obj) {
        int length = stringBuffer.length();
        String obj2 = obj.toString();
        if (obj instanceof Boolean) {
            obj2 = obj2.toUpperCase(Locale.ROOT);
        }
        stringBuffer.append(this.desc);
        for (int i : this.textPos) {
            int i2 = i + length;
            stringBuffer.replace(i2, i2 + 1, obj2);
        }
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public void simpleValue(StringBuffer stringBuffer, Object obj) {
        SIMPLE_TEXT.formatValue(stringBuffer, obj);
    }
}
