package org.apache.poi.hwpf.model;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.poi.hwpf.sprm.CharacterSprmUncompressor;
import org.apache.poi.hwpf.sprm.ParagraphSprmUncompressor;
import org.apache.poi.hwpf.usermodel.CharacterProperties;
import org.apache.poi.hwpf.usermodel.ParagraphProperties;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class StyleSheet {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int NIL_STYLE = 4095;
    private int _cbStshi;
    private final Stshif _stshif;
    StyleDescription[] _styleDescriptions;

    @Deprecated
    private static final ParagraphProperties NIL_PAP = new ParagraphProperties();

    @Deprecated
    private static final CharacterProperties NIL_CHP = new CharacterProperties();
    private static final byte[] NIL_CHPX = new byte[0];
    private static final byte[] NIL_PAPX = {0, 0};

    public StyleSheet(byte[] bArr, int i) {
        this._cbStshi = LittleEndian.getShort(bArr, i);
        int i2 = i + 2;
        Stshif stshif = new Stshif(bArr, i2);
        this._stshif = stshif;
        if (stshif.getCstd() < 0) {
            throw new IllegalArgumentException("Cannot create StyleSheet, invalid Cstd: " + stshif.getCstd());
        }
        int i3 = i2 + this._cbStshi;
        this._styleDescriptions = new StyleDescription[stshif.getCstd()];
        int i4 = 0;
        for (int i5 = 0; i5 < this._stshif.getCstd(); i5++) {
            short s = LittleEndian.getShort(bArr, i3);
            int i6 = i3 + 2;
            if (s > 0) {
                this._styleDescriptions[i5] = new StyleDescription(bArr, this._stshif.getCbSTDBaseInFile(), i6, true);
            }
            i3 = i6 + s;
        }
        while (true) {
            StyleDescription[] styleDescriptionArr = this._styleDescriptions;
            if (i4 >= styleDescriptionArr.length) {
                return;
            }
            if (styleDescriptionArr[i4] != null) {
                createPap(i4);
                createChp(i4);
            }
            i4++;
        }
    }

    @Deprecated
    private void createChp(int i) {
        StyleDescription styleDescription = this._styleDescriptions[i];
        if (styleDescription == null) {
            throw new IllegalStateException("Cannot create Chp, empty styleDescription, had : " + this._styleDescriptions.length + " descriptions");
        }
        CharacterProperties chp = styleDescription.getCHP();
        byte[] chpx = styleDescription.getCHPX();
        int baseStyle = styleDescription.getBaseStyle();
        if (baseStyle == i) {
            baseStyle = 4095;
        }
        if (chp != null || chpx == null) {
            return;
        }
        CharacterProperties characterProperties = new CharacterProperties();
        if (baseStyle != 4095) {
            StyleDescription styleDescription2 = this._styleDescriptions[baseStyle];
            if (styleDescription2 == null) {
                throw new IllegalStateException("Cannot create Chp, empty styleDescription, had : " + this._styleDescriptions.length + " descriptions");
            }
            CharacterProperties chp2 = styleDescription2.getCHP();
            if (chp2 == null) {
                createChp(baseStyle);
                characterProperties = styleDescription2.getCHP();
            } else {
                characterProperties = chp2;
            }
            if (characterProperties == null) {
                characterProperties = new CharacterProperties();
            }
        }
        styleDescription.setCHP(CharacterSprmUncompressor.uncompressCHP(characterProperties, chpx, 0));
    }

    @Deprecated
    private void createPap(int i) {
        StyleDescription styleDescription = this._styleDescriptions[i];
        if (styleDescription == null) {
            throw new IllegalStateException("Cannot create Pap, empty styleDescription, had : " + this._styleDescriptions.length + " descriptions");
        }
        ParagraphProperties pap = styleDescription.getPAP();
        byte[] papx = styleDescription.getPAPX();
        int baseStyle = styleDescription.getBaseStyle();
        if (pap != null || papx == null) {
            return;
        }
        ParagraphProperties paragraphProperties = new ParagraphProperties();
        if (baseStyle != 4095) {
            StyleDescription styleDescription2 = this._styleDescriptions[baseStyle];
            if (styleDescription2 == null) {
                throw new IllegalStateException("Cannot create Pap, empty styleDescription, had : " + this._styleDescriptions.length + " descriptions");
            }
            ParagraphProperties pap2 = styleDescription2.getPAP();
            if (pap2 != null) {
                paragraphProperties = pap2;
            } else {
                if (baseStyle == i) {
                    throw new IllegalStateException("Pap style " + i + " claimed to have itself as its parent, which isn't allowed");
                }
                createPap(baseStyle);
                paragraphProperties = styleDescription2.getPAP();
            }
        }
        if (paragraphProperties == null) {
            paragraphProperties = new ParagraphProperties();
        }
        styleDescription.setPAP(ParagraphSprmUncompressor.uncompressPAP(paragraphProperties, papx, 2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StyleSheet)) {
            return false;
        }
        StyleSheet styleSheet = (StyleSheet) obj;
        if (!styleSheet._stshif.equals(this._stshif) || styleSheet._cbStshi != this._cbStshi || styleSheet._styleDescriptions.length != this._styleDescriptions.length) {
            return false;
        }
        int i = 0;
        while (true) {
            StyleDescription[] styleDescriptionArr = this._styleDescriptions;
            if (i >= styleDescriptionArr.length) {
                return true;
            }
            StyleDescription styleDescription = styleDescriptionArr[i];
            StyleDescription styleDescription2 = styleSheet._styleDescriptions[i];
            if (!(styleDescription == null && styleDescription2 == null) && (styleDescription2 == null || !styleDescription2.equals(styleDescription))) {
                break;
            }
            i++;
        }
        return false;
    }

    public byte[] getCHPX(int i) {
        StyleDescription styleDescription;
        if (i == 4095) {
            return NIL_CHPX;
        }
        StyleDescription[] styleDescriptionArr = this._styleDescriptions;
        if (i < styleDescriptionArr.length && i != -1 && (styleDescription = styleDescriptionArr[i]) != null && styleDescription.getCHPX() != null) {
            return this._styleDescriptions[i].getCHPX();
        }
        return NIL_CHPX;
    }

    @Deprecated
    public CharacterProperties getCharacterStyle(int i) {
        StyleDescription styleDescription;
        if (i == 4095) {
            return NIL_CHP;
        }
        StyleDescription[] styleDescriptionArr = this._styleDescriptions;
        if (i < styleDescriptionArr.length && i != -1 && (styleDescription = styleDescriptionArr[i]) != null) {
            return styleDescription.getCHP();
        }
        return NIL_CHP;
    }

    public byte[] getPAPX(int i) {
        StyleDescription styleDescription;
        if (i == 4095) {
            return NIL_PAPX;
        }
        StyleDescription[] styleDescriptionArr = this._styleDescriptions;
        if (i < styleDescriptionArr.length && i != -1 && (styleDescription = styleDescriptionArr[i]) != null && styleDescription.getPAPX() != null) {
            return this._styleDescriptions[i].getPAPX();
        }
        return NIL_PAPX;
    }

    @Deprecated
    public ParagraphProperties getParagraphStyle(int i) {
        StyleDescription styleDescription;
        if (i == 4095) {
            return NIL_PAP;
        }
        StyleDescription[] styleDescriptionArr = this._styleDescriptions;
        if (i < styleDescriptionArr.length && i != -1 && (styleDescription = styleDescriptionArr[i]) != null && styleDescription.getPAP() != null) {
            return this._styleDescriptions[i].getPAP();
        }
        return NIL_PAP;
    }

    public StyleDescription getStyleDescription(int i) {
        return this._styleDescriptions[i];
    }

    public int hashCode() {
        return 42;
    }

    public int numStyles() {
        return this._styleDescriptions.length;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        this._cbStshi = 18;
        byte[] bArr = new byte[18 + 2];
        LittleEndian.putUShort(bArr, 0, (short) 18);
        this._stshif.setCstd(this._styleDescriptions.length);
        this._stshif.serialize(bArr, 2);
        outputStream.write(bArr);
        byte[] bArr2 = new byte[2];
        for (StyleDescription styleDescription : this._styleDescriptions) {
            if (styleDescription != null) {
                byte[] byteArray = styleDescription.toByteArray();
                LittleEndian.putShort(bArr2, 0, (short) (byteArray.length + (byteArray.length % 2)));
                outputStream.write(bArr2);
                outputStream.write(byteArray);
                if (byteArray.length % 2 == 1) {
                    outputStream.write(0);
                }
            } else {
                bArr2[0] = 0;
                bArr2[1] = 0;
                outputStream.write(bArr2);
            }
        }
    }
}
