package org.apache.poi.hwpf.sprm;

import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.SectionProperties;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class SectionSprmUncompressor extends SprmUncompressor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SectionSprmUncompressor.class);

    public static void unCompressSEPOperation(SectionProperties sectionProperties, SprmOperation sprmOperation) {
        int operation = sprmOperation.getOperation();
        if (operation == 51) {
            sectionProperties.setWTextFlow((short) sprmOperation.getOperand());
            return;
        }
        if (operation == 60) {
            sectionProperties.setRncFtn((short) sprmOperation.getOperand());
            return;
        }
        switch (operation) {
            case 0:
                sectionProperties.setCnsPgn((byte) sprmOperation.getOperand());
                return;
            case 1:
                sectionProperties.setIHeadingPgn((byte) sprmOperation.getOperand());
                return;
            case 2:
                sectionProperties.setOlstAnm(Arrays.copyOfRange(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset(), sprmOperation.getGrpprlOffset() + (sprmOperation.size() - 3)));
                return;
            case 3:
            case 4:
            case 30:
            case 40:
            case 41:
            case 42:
                return;
            case 5:
                sectionProperties.setFEvenlySpaced(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 6:
                sectionProperties.setFUnlocked(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 7:
                sectionProperties.setDmBinFirst((short) sprmOperation.getOperand());
                return;
            case 8:
                sectionProperties.setDmBinOther((short) sprmOperation.getOperand());
                return;
            case 9:
                sectionProperties.setBkc((byte) sprmOperation.getOperand());
                return;
            case 10:
                sectionProperties.setFTitlePage(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 11:
                sectionProperties.setCcolM1((short) sprmOperation.getOperand());
                return;
            case 12:
                sectionProperties.setDxaColumns(sprmOperation.getOperand());
                return;
            case 13:
                sectionProperties.setFAutoPgn(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 14:
                sectionProperties.setNfcPgn((byte) sprmOperation.getOperand());
                return;
            case 15:
                sectionProperties.setDyaPgn((short) sprmOperation.getOperand());
                return;
            case 16:
                sectionProperties.setDxaPgn((short) sprmOperation.getOperand());
                return;
            case 17:
                sectionProperties.setFPgnRestart(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 18:
                sectionProperties.setFEndNote(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 19:
                sectionProperties.setLnc((byte) sprmOperation.getOperand());
                return;
            case 20:
                sectionProperties.setGrpfIhdt((byte) sprmOperation.getOperand());
                return;
            case 21:
                sectionProperties.setNLnnMod((short) sprmOperation.getOperand());
                return;
            case 22:
                sectionProperties.setDxaLnn(sprmOperation.getOperand());
                return;
            case 23:
                sectionProperties.setDyaHdrTop(sprmOperation.getOperand());
                return;
            case 24:
                sectionProperties.setDyaHdrBottom(sprmOperation.getOperand());
                return;
            case 25:
                sectionProperties.setFLBetween(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 26:
                sectionProperties.setVjc((byte) sprmOperation.getOperand());
                return;
            case 27:
                sectionProperties.setLnnMin((short) sprmOperation.getOperand());
                return;
            case 28:
                sectionProperties.setPgnStart((short) sprmOperation.getOperand());
                return;
            case 29:
                sectionProperties.setDmOrientPage(sprmOperation.getOperand() != 0);
                return;
            case 31:
                sectionProperties.setXaPage(sprmOperation.getOperand());
                return;
            case 32:
                sectionProperties.setYaPage(sprmOperation.getOperand());
                return;
            case 33:
                sectionProperties.setDxaLeft(sprmOperation.getOperand());
                return;
            case 34:
                sectionProperties.setDxaRight(sprmOperation.getOperand());
                return;
            case 35:
                sectionProperties.setDyaTop(sprmOperation.getOperand());
                return;
            case 36:
                sectionProperties.setDyaBottom(sprmOperation.getOperand());
                return;
            case 37:
                sectionProperties.setDzaGutter(sprmOperation.getOperand());
                return;
            case 38:
                sectionProperties.setDmPaperReq((short) sprmOperation.getOperand());
                return;
            case 39:
                sectionProperties.setFPropMark(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 43:
                sectionProperties.setBrcTop(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 44:
                sectionProperties.setBrcLeft(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 45:
                sectionProperties.setBrcBottom(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 46:
                sectionProperties.setBrcRight(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 47:
                sectionProperties.setPgbProp(sprmOperation.getOperand());
                return;
            case 48:
                sectionProperties.setDxtCharSpace(sprmOperation.getOperand());
                return;
            case 49:
                sectionProperties.setDyaLinePitch(sprmOperation.getOperand());
                return;
            default:
                switch (operation) {
                    case 62:
                        sectionProperties.setRncEdn((short) sprmOperation.getOperand());
                        return;
                    case 63:
                        sectionProperties.setNFtn(sprmOperation.getOperand());
                        return;
                    case 64:
                        sectionProperties.setNfcFtnRef(sprmOperation.getOperand());
                        return;
                    case 65:
                        sectionProperties.setNEdn(sprmOperation.getOperand());
                        return;
                    case 66:
                        sectionProperties.setNfcEdnRef(sprmOperation.getOperand());
                        return;
                    default:
                        LOG.atInfo().log("Unsupported Sprm operation: {} ({})", Unbox.box(operation), HexDump.byteToHex(operation));
                        return;
                }
        }
    }

    public static SectionProperties uncompressSEP(byte[] bArr, int i) {
        SectionProperties sectionProperties = new SectionProperties();
        SprmIterator sprmIterator = new SprmIterator(bArr, i);
        while (sprmIterator.hasNext()) {
            unCompressSEPOperation(sectionProperties, sprmIterator.next());
        }
        return sectionProperties;
    }
}
