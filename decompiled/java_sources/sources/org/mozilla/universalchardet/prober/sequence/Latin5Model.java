package org.mozilla.universalchardet.prober.sequence;

import com.sun.org.apache.bcel.internal.Constants;
import org.apache.poi.hssf.record.DrawingGroupRecord;
import org.apache.poi.hssf.record.DrawingSelectionRecord;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.hssf.record.MergeCellsRecord;
import org.apache.poi.hssf.record.SSTRecord;

/* loaded from: classes13.dex */
public class Latin5Model extends CyrillicModel {

    /* renamed from: b */
    public static final short[] f115606b = {255, 255, 255, 255, 255, 255, 255, 255, 255, 255, Constants.IMPDEP1, 255, 255, Constants.IMPDEP1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, SSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 74, 153, 75, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, 71, 172, 66, 173, 65, 174, 76, 175, 64, 176, 177, 77, 72, 178, 69, 67, 179, 78, 73, 180, 181, 79, 182, 183, 184, 185, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, LabelSSTRecord.sid, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, Constants.INVOKESTATIC_QUICK, 218, Constants.INVOKEVIRTUALOBJECT_QUICK, 220, 221, Constants.ANEWARRAY_QUICK, Constants.MULTIANEWARRAY_QUICK, 224, 225, 226, 227, Constants.PUTFIELD_QUICK_W, MergeCellsRecord.sid, 230, 231, 232, 233, 234, DrawingGroupRecord.sid, 236, DrawingSelectionRecord.sid, 238, 37, 44, 33, 46, 41, 48, 56, 51, 42, 60, 36, 49, 38, 31, 34, 35, 45, 32, 40, 52, 53, 55, 58, 50, 57, 63, 70, 62, 61, 47, 59, 43, 3, 21, 10, 19, 13, 2, 24, 20, 4, 23, 11, 8, 12, 5, 1, 15, 9, 7, 6, 14, 39, 26, 28, 22, 25, 29, 54, 18, 17, 30, 27, 16, 239, 68, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, SSTRecord.sid, 255};

    public Latin5Model() {
        super(f115606b, org.mozilla.universalchardet.Constants.CHARSET_ISO_8859_5);
    }
}
