package org.apache.poi.hwmf.record;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfEscape;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfEscape implements HwmfRecord {
    private static final int MAX_OBJECT_SIZE = 65535;
    private HwmfEscapeData escapeData;
    private EscapeFunction escapeFunction;

    /* loaded from: classes12.dex */
    public enum EscapeFunction {
        NEWFRAME(1, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ABORTDOC(2, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        NEXTBAND(3, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETCOLORTABLE(4, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETCOLORTABLE(5, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        FLUSHOUT(6, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        DRAFTMODE(7, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        QUERYESCSUPPORT(8, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETABORTPROC(9, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        STARTDOC(10, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ENDDOC(11, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETPHYSPAGESIZE(12, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETPRINTINGOFFSET(13, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETSCALINGFACTOR(14, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        META_ESCAPE_ENHANCED_METAFILE(15, new Supplier() { // from class: com.sunia.HTREnginev2.w2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeEMF();
            }
        }),
        SETPENWIDTH(16, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETCOPYCOUNT(17, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETPAPERSOURCE(18, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        PASSTHROUGH(19, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETTECHNOLOGY(20, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETLINECAP(21, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETLINEJOIN(22, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETMITERLIMIT(23, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        BANDINFO(24, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        DRAWPATTERNRECT(25, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETVECTORPENSIZE(26, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETVECTORBRUSHSIZE(27, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ENABLEDUPLEX(28, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETSETPAPERBINS(29, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETSETPRINTORIENT(30, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ENUMPAPERBINS(31, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SETDIBSCALING(32, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        EPSPRINTING(33, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ENUMPAPERMETRICS(34, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETSETPAPERMETRICS(35, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        POSTSCRIPT_DATA(37, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        POSTSCRIPT_IGNORE(38, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETDEVICEUNITS(42, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETEXTENDEDTEXTMETRICS(256, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETPAIRKERNTABLE(258, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        EXTTEXTOUT(512, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GETFACENAME(513, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        DOWNLOADFACE(514, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        METAFILE_DRIVER(2049, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        QUERYDIBSUPPORT(3073, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        BEGIN_PATH(4096, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        CLIP_TO_PATH(4097, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        END_PATH(4098, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        OPEN_CHANNEL(4110, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        DOWNLOADHEADER(4111, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        CLOSE_CHANNEL(4112, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        POSTSCRIPT_PASSTHROUGH(4115, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        ENCAPSULATED_POSTSCRIPT(4116, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        POSTSCRIPT_IDENTIFY(4117, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        POSTSCRIPT_INJECTION(4118, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        CHECKJPEGFORMAT(4119, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        CHECKPNGFORMAT(4120, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        GET_PS_FEATURESETTING(4121, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        MXDC_ESCAPE(4122, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        }),
        SPCLPASSTHROUGH2(4568, new Supplier() { // from class: com.sunia.HTREnginev2.v2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HwmfEscape.WmfEscapeUnknownData();
            }
        });

        private final Supplier<? extends HwmfEscapeData> constructor;
        private final int flag;

        EscapeFunction(int i, Supplier supplier) {
            this.flag = i;
            this.constructor = supplier;
        }

        public Supplier<? extends HwmfEscapeData> getConstructor() {
            return this.constructor;
        }

        public int getFlag() {
            return this.flag;
        }

        public static EscapeFunction valueOf(int i) {
            for (EscapeFunction escapeFunction : values()) {
                if (escapeFunction.flag == i) {
                    return escapeFunction;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public interface HwmfEscapeData {
        int init(LittleEndianInputStream littleEndianInputStream, long j, EscapeFunction escapeFunction) throws IOException;
    }

    /* loaded from: classes12.dex */
    public static class WmfEscapeEMF implements HwmfEscapeData, GenericRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int EMF_COMMENT_IDENTIFIER = 1128680791;
        int checksum;
        int commentIdentifier;
        int commentRecordCount;
        int commentType;
        int currentRecordSize;
        byte[] emfData;
        int emfRecordSize;
        int flags;
        int remainingBytes;
        int version;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.commentIdentifier);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.commentType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.version);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Integer.valueOf(this.checksum);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Integer.valueOf(this.flags);
        }

        public int getCommentRecordCount() {
            return this.commentRecordCount;
        }

        public int getCurrentRecordSize() {
            return this.currentRecordSize;
        }

        public byte[] getEmfData() {
            return this.emfData;
        }

        public int getEmfRecordSize() {
            return this.emfRecordSize;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("commentIdentifier", new Supplier() { // from class: com.sunia.HTREnginev2.x2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfEscape.WmfEscapeEMF.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("commentType", new Supplier() { // from class: com.sunia.HTREnginev2.y2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfEscape.WmfEscapeEMF.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put("version", new Supplier() { // from class: com.sunia.HTREnginev2.z2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HwmfEscape.WmfEscapeEMF.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("checksum", new Supplier() { // from class: com.sunia.HTREnginev2.a3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HwmfEscape.WmfEscapeEMF.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("flags", new Supplier() { // from class: com.sunia.HTREnginev2.b3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HwmfEscape.WmfEscapeEMF.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("commentRecordCount", new Supplier() { // from class: com.sunia.HTREnginev2.c3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfEscape.WmfEscapeEMF.this.getCommentRecordCount());
                }
            });
            linkedHashMap.put("currentRecordSize", new Supplier() { // from class: com.sunia.HTREnginev2.d3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfEscape.WmfEscapeEMF.this.getCurrentRecordSize());
                }
            });
            linkedHashMap.put("remainingBytes", new Supplier() { // from class: com.sunia.HTREnginev2.e3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfEscape.WmfEscapeEMF.this.getRemainingBytes());
                }
            });
            linkedHashMap.put("emfRecordSize", new Supplier() { // from class: com.sunia.HTREnginev2.f3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfEscape.WmfEscapeEMF.this.getEmfRecordSize());
                }
            });
            linkedHashMap.put("emfData", new Supplier() { // from class: com.sunia.HTREnginev2.g3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfEscape.WmfEscapeEMF.this.getEmfData();
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        public int getRemainingBytes() {
            return this.remainingBytes;
        }

        @Override // org.apache.poi.hwmf.record.HwmfEscape.HwmfEscapeData
        public int init(LittleEndianInputStream littleEndianInputStream, long j, EscapeFunction escapeFunction) throws IOException {
            if (j < 4) {
                return 0;
            }
            int readInt = littleEndianInputStream.readInt();
            this.commentIdentifier = readInt;
            if (readInt != EMF_COMMENT_IDENTIFIER) {
                byte[] byteArray = IOUtils.toByteArray(littleEndianInputStream, (int) (j - 4), 65535);
                this.emfData = byteArray;
                this.remainingBytes = byteArray.length;
                return (int) j;
            }
            this.commentType = littleEndianInputStream.readInt();
            this.version = littleEndianInputStream.readInt();
            this.checksum = littleEndianInputStream.readUShort();
            this.flags = littleEndianInputStream.readInt();
            this.commentRecordCount = littleEndianInputStream.readInt();
            this.currentRecordSize = littleEndianInputStream.readInt();
            this.remainingBytes = littleEndianInputStream.readInt();
            this.emfRecordSize = littleEndianInputStream.readInt();
            byte[] byteArray2 = IOUtils.toByteArray(littleEndianInputStream, this.currentRecordSize, 65535);
            this.emfData = byteArray2;
            return byteArray2.length + 34;
        }

        public boolean isValid() {
            return this.commentIdentifier == EMF_COMMENT_IDENTIFIER;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfEscapeUnknownData implements HwmfEscapeData, GenericRecord {
        private byte[] escapeDataBytes;
        EscapeFunction escapeFunction;

        public byte[] getEscapeDataBytes() {
            return this.escapeDataBytes;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("escapeDataBytes", new Supplier() { // from class: com.sunia.HTREnginev2.h3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfEscape.WmfEscapeUnknownData.this.getEscapeDataBytes();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfEscape.HwmfEscapeData
        public int init(LittleEndianInputStream littleEndianInputStream, long j, EscapeFunction escapeFunction) throws IOException {
            this.escapeFunction = escapeFunction;
            int i = (int) j;
            this.escapeDataBytes = IOUtils.toByteArray(littleEndianInputStream, i, 65535);
            return i;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    @Override // org.apache.poi.hwmf.record.HwmfRecord
    public void draw(HwmfGraphics hwmfGraphics) {
    }

    public <T extends HwmfEscapeData> T getEscapeData() {
        return (T) this.escapeData;
    }

    public EscapeFunction getEscapeFunction() {
        return this.escapeFunction;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("escapeFunction", new Supplier() { // from class: com.sunia.HTREnginev2.t2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfEscape.this.getEscapeFunction();
            }
        }, "escapeData", new Supplier() { // from class: com.sunia.HTREnginev2.u2i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfEscape.this.getEscapeData();
            }
        });
    }

    @Override // org.apache.poi.hwmf.record.HwmfRecord
    public HwmfRecordType getWmfRecordType() {
        return HwmfRecordType.escape;
    }

    @Override // org.apache.poi.hwmf.record.HwmfRecord
    public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
        this.escapeFunction = EscapeFunction.valueOf(littleEndianInputStream.readUShort());
        int readUShort = littleEndianInputStream.readUShort();
        EscapeFunction escapeFunction = this.escapeFunction;
        HwmfEscapeData wmfEscapeUnknownData = escapeFunction == null ? new WmfEscapeUnknownData() : (HwmfEscapeData) escapeFunction.constructor.get();
        this.escapeData = wmfEscapeUnknownData;
        return wmfEscapeUnknownData.init(littleEndianInputStream, readUShort, this.escapeFunction) + 4;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }
}
