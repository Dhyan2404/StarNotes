package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.SymbolInfo;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes4.dex */
public final class mte extends SymbolInfo {
    public mte() {
        super(false, 1558, StandardNames.XS_SIMPLE_CONTENT, 22, 22, 36, -1, 62);
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getDataLengthForInterleavedBlock(int i) {
        return i <= 8 ? 156 : 155;
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getInterleavedBlockCount() {
        return 10;
    }
}
