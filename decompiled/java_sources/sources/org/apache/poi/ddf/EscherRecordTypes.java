package org.apache.poi.ddf;

import com.sunia.HTREnginev2.ize;
import com.sunia.HTREnginev2.kze;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBitmapBlip;
import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherDgRecord;
import org.apache.poi.ddf.EscherDggRecord;
import org.apache.poi.ddf.EscherMetafileBlip;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherSpgrRecord;
import org.apache.poi.ddf.EscherSplitMenuColorsRecord;
import org.apache.poi.ddf.EscherTertiaryOptRecord;
import org.apache.poi.ddf.EscherTextboxRecord;

/* loaded from: classes12.dex */
public enum EscherRecordTypes {
    DGG_CONTAINER(61440, "DggContainer", null, new ize()),
    BSTORE_CONTAINER(61441, "BStoreContainer", null, new ize()),
    DG_CONTAINER(61442, "DgContainer", null, new ize()),
    SPGR_CONTAINER(61443, "SpgrContainer", null, new ize()),
    SP_CONTAINER(61444, "SpContainer", null, new ize()),
    SOLVER_CONTAINER(61445, "SolverContainer", null, new ize()),
    DGG(61446, "Dgg", "MsofbtDgg", new Supplier() { // from class: com.sunia.HTREnginev2.lvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherDggRecord();
        }
    }),
    BSE(61447, "BSE", "MsofbtBSE", new Supplier() { // from class: com.sunia.HTREnginev2.mvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherBSERecord();
        }
    }),
    DG(61448, "Dg", "MsofbtDg", new Supplier() { // from class: com.sunia.HTREnginev2.nvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherDgRecord();
        }
    }),
    SPGR(61449, "Spgr", "MsofbtSpgr", new Supplier() { // from class: com.sunia.HTREnginev2.ovf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherSpgrRecord();
        }
    }),
    SP(61450, "Sp", "MsofbtSp", new Supplier() { // from class: com.sunia.HTREnginev2.jvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherSpRecord();
        }
    }),
    OPT(61451, "Opt", "msofbtOPT", new Supplier() { // from class: com.sunia.HTREnginev2.pvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherOptRecord();
        }
    }),
    TEXTBOX(61452, null, null, new Supplier() { // from class: com.sunia.HTREnginev2.qvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherTextboxRecord();
        }
    }),
    CLIENT_TEXTBOX(61453, "ClientTextbox", "msofbtClientTextbox", new Supplier() { // from class: com.sunia.HTREnginev2.qvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherTextboxRecord();
        }
    }),
    ANCHOR(61454, null, null, null),
    CHILD_ANCHOR(61455, "ChildAnchor", "MsofbtChildAnchor", new Supplier() { // from class: com.sunia.HTREnginev2.rvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherChildAnchorRecord();
        }
    }),
    CLIENT_ANCHOR(61456, "ClientAnchor", "MsofbtClientAnchor", new Supplier() { // from class: com.sunia.HTREnginev2.svf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherClientAnchorRecord();
        }
    }),
    CLIENT_DATA(61457, "ClientData", "MsofbtClientData", new Supplier() { // from class: com.sunia.HTREnginev2.tvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherClientDataRecord();
        }
    }),
    CONNECTOR_RULE(61458, null, null, null),
    ALIGN_RULE(61459, null, null, null),
    ARC_RULE(61460, null, null, null),
    CLIENT_RULE(61461, null, null, null),
    CLSID(61462, null, null, null),
    CALLOUT_RULE(61463, null, null, null),
    BLIP_START(61464, "Blip", "msofbtBlip", null),
    BLIP_EMF(61466, "BlipEmf", null, new Supplier() { // from class: com.sunia.HTREnginev2.uvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherMetafileBlip();
        }
    }),
    BLIP_WMF(61467, "BlipWmf", null, new Supplier() { // from class: com.sunia.HTREnginev2.uvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherMetafileBlip();
        }
    }),
    BLIP_PICT(61468, "BlipPict", null, new Supplier() { // from class: com.sunia.HTREnginev2.uvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherMetafileBlip();
        }
    }),
    BLIP_JPEG(61469, "BlipJpeg", null, new Supplier() { // from class: com.sunia.HTREnginev2.vvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherBitmapBlip();
        }
    }),
    BLIP_PNG(61470, "BlipPng", null, new Supplier() { // from class: com.sunia.HTREnginev2.vvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherBitmapBlip();
        }
    }),
    BLIP_DIB(61471, "BlipDib", null, new Supplier() { // from class: com.sunia.HTREnginev2.vvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherBitmapBlip();
        }
    }),
    BLIP_TIFF(61481, "BlipTiff", null, new Supplier() { // from class: com.sunia.HTREnginev2.vvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherBitmapBlip();
        }
    }),
    BLIP_END(61719, "Blip", "msofbtBlip", null),
    REGROUP_ITEMS(61720, null, null, null),
    SELECTION(61721, null, null, null),
    COLOR_MRU(61722, null, null, null),
    DELETED_PSPL(61725, null, null, null),
    SPLIT_MENU_COLORS(61726, "SplitMenuColors", "MsofbtSplitMenuColors", new Supplier() { // from class: com.sunia.HTREnginev2.wvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherSplitMenuColorsRecord();
        }
    }),
    OLE_OBJECT(61727, null, null, null),
    COLOR_SCHEME(61728, null, null, null),
    USER_DEFINED(61730, "TertiaryOpt", null, new Supplier() { // from class: com.sunia.HTREnginev2.xvf
        @Override // java.util.function.Supplier
        public final Object get() {
            return new EscherTertiaryOptRecord();
        }
    }),
    UNKNOWN(65535, "unknown", "unknown", new kze());

    private static final Map<Short, EscherRecordTypes> LOOKUP = (Map) Stream.of((Object[]) values()).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.kvf
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            Short typeId;
            typeId = ((EscherRecordTypes) obj).getTypeId();
            return typeId;
        }
    }, Function.identity()));
    public final Supplier<? extends EscherRecord> constructor;
    public final String description;
    public final String recordName;
    public final short typeID;

    EscherRecordTypes(int i, String str, String str2, Supplier supplier) {
        this.typeID = (short) i;
        this.recordName = str;
        this.description = str2;
        this.constructor = supplier;
    }

    public static EscherRecordTypes forTypeID(int i) {
        if (i == 61482) {
            return BLIP_JPEG;
        }
        EscherRecordTypes escherRecordTypes = LOOKUP.get(Short.valueOf((short) i));
        return escherRecordTypes != null ? escherRecordTypes : UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Short getTypeId() {
        return Short.valueOf(this.typeID);
    }
}
