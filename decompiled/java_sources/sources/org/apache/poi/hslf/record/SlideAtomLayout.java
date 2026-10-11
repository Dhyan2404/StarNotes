package org.apache.poi.hslf.record;

import com.onyx.android.sdk.genericshape.GeoConstant;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.SlideAtomLayout;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class SlideAtomLayout implements GenericRecord {
    private SlideLayoutType geometry;
    private byte[] placeholderIDs;

    /* loaded from: classes12.dex */
    public enum SlideLayoutType {
        TITLE_SLIDE(0),
        TITLE_BODY(1),
        MASTER_TITLE(2),
        MASTER_SLIDE(3),
        MASTER_NOTES(4),
        NOTES_TITLE_BODY(5),
        HANDOUT(6),
        TITLE_ONLY(7),
        TWO_COLUMNS(8),
        TWO_ROWS(9),
        COLUMN_TWO_ROWS(10),
        TWO_ROWS_COLUMN(11),
        TITLE_2_ROW_BOTTOM_2_COLUMN_BODY(12),
        TWO_COLUMNS_ROW(13),
        FOUR_OBJECTS(14),
        BIG_OBJECT(15),
        BLANK_SLIDE(16),
        VERTICAL_TITLE_BODY(17),
        VERTICAL_TWO_ROWS(18);

        private int nativeId;

        SlideLayoutType(int i) {
            this.nativeId = i;
        }

        public static SlideLayoutType forNativeID(int i) {
            for (SlideLayoutType slideLayoutType : values()) {
                if (slideLayoutType.nativeId == i) {
                    return slideLayoutType;
                }
            }
            return null;
        }

        public int getNativeId() {
            return this.nativeId;
        }
    }

    public SlideAtomLayout(byte[] bArr) {
        if (bArr.length == 12) {
            this.geometry = SlideLayoutType.forNativeID(LittleEndian.getInt(bArr, 0));
            this.placeholderIDs = Arrays.copyOfRange(bArr, 4, 12);
        } else {
            throw new HSLFException("SSlideLayoutAtom created with byte array not 12 bytes long - was " + bArr.length + " bytes in size");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.placeholderIDs;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(GeoConstant.KEY_Geometry, new Supplier() { // from class: com.sunia.HTREnginev2.qtm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SlideAtomLayout.this.getGeometryType();
            }
        }, "placeholderIDs", new Supplier() { // from class: com.sunia.HTREnginev2.rtm
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = SlideAtomLayout.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public SlideLayoutType getGeometryType() {
        return this.geometry;
    }

    public void setGeometryType(SlideLayoutType slideLayoutType) {
        this.geometry = slideLayoutType;
    }

    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4];
        SlideLayoutType slideLayoutType = this.geometry;
        LittleEndian.putInt(bArr, 0, slideLayoutType == null ? 0 : slideLayoutType.getNativeId());
        outputStream.write(bArr);
        outputStream.write(this.placeholderIDs);
    }
}
