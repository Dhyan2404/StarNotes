package org.apache.poi.hwmf.record;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.record.HwmfBitmap16;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfBitmap16 implements GenericRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private byte[] bitmap;
    private int bitsPixel;
    private int height;
    private final boolean isPartial;
    private int planes;
    private int type;
    private int width;
    private int widthBytes;

    public HwmfBitmap16() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Boolean.valueOf(this.isPartial);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.width);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this.widthBytes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Integer.valueOf(this.planes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return Integer.valueOf(this.bitsPixel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return this.bitmap;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("isPartial", new Supplier() { // from class: com.sunia.HTREnginev2.e1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = HwmfBitmap16.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("type", new Supplier() { // from class: com.sunia.HTREnginev2.f1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = HwmfBitmap16.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("width", new Supplier() { // from class: com.sunia.HTREnginev2.g1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = HwmfBitmap16.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("height", new Supplier() { // from class: com.sunia.HTREnginev2.h1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = HwmfBitmap16.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        linkedHashMap.put("widthBytes", new Supplier() { // from class: com.sunia.HTREnginev2.i1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = HwmfBitmap16.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("planes", new Supplier() { // from class: com.sunia.HTREnginev2.j1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = HwmfBitmap16.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("bitsPixel", new Supplier() { // from class: com.sunia.HTREnginev2.k1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = HwmfBitmap16.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        linkedHashMap.put("bitmap", new Supplier() { // from class: com.sunia.HTREnginev2.l1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = HwmfBitmap16.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public BufferedImage getImage() {
        return new BufferedImage(this.width, this.height, 6);
    }

    public int init(LittleEndianInputStream littleEndianInputStream) throws IOException {
        int i;
        this.type = littleEndianInputStream.readShort();
        this.width = littleEndianInputStream.readShort();
        this.height = littleEndianInputStream.readShort();
        this.widthBytes = littleEndianInputStream.readShort();
        this.planes = littleEndianInputStream.readUByte();
        this.bitsPixel = littleEndianInputStream.readUByte();
        if (this.isPartial) {
            littleEndianInputStream.skip(4L);
            littleEndianInputStream.skip(18L);
            i = 32;
        } else {
            i = 10;
        }
        this.bitmap = IOUtils.toByteArray(littleEndianInputStream, ((((this.width * this.bitsPixel) + 15) >> 4) << 1) * this.height);
        return i;
    }

    public HwmfBitmap16(boolean z) {
        this.isPartial = z;
    }
}
