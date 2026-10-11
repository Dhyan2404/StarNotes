package org.apache.poi.hwpf.model;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import java.util.Objects;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.types.StdfBaseAbstractType;
import org.apache.poi.hwpf.usermodel.CharacterProperties;
import org.apache.poi.hwpf.usermodel.ParagraphProperties;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public final class StyleDescription {
    private static final int CHARACTER_STYLE = 2;
    private static final Logger LOG = LogManager.getLogger((Class<?>) StyleDescription.class);
    private static final int PARAGRAPH_STYLE = 1;
    private int _baseLength;

    @Deprecated
    CharacterProperties _chp;
    String _name;

    @Deprecated
    ParagraphProperties _pap;
    private StdfBase _stdfBase;
    private StdfPost2000 _stdfPost2000;
    UPX[] _upxs;

    public StyleDescription() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StyleDescription)) {
            return false;
        }
        StyleDescription styleDescription = (StyleDescription) obj;
        if (Objects.equals(this._name, styleDescription._name) && Objects.equals(this._stdfBase, styleDescription._stdfBase)) {
            return Arrays.equals(this._upxs, styleDescription._upxs);
        }
        return false;
    }

    public int getBaseStyle() {
        return this._stdfBase.getIstdBase();
    }

    @Deprecated
    public CharacterProperties getCHP() {
        return this._chp;
    }

    public byte[] getCHPX() {
        byte stk = this._stdfBase.getStk();
        if (stk != 1) {
            if (stk != 2) {
                return null;
            }
            return this._upxs[0].getUPX();
        }
        UPX[] upxArr = this._upxs;
        if (upxArr.length > 1) {
            return upxArr[1].getUPX();
        }
        return null;
    }

    public String getName() {
        return this._name;
    }

    @Deprecated
    public ParagraphProperties getPAP() {
        return this._pap;
    }

    public byte[] getPAPX() {
        if (this._stdfBase.getStk() == 1) {
            return this._upxs[0].getUPX();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this._name, this._stdfBase, this._upxs});
    }

    @Deprecated
    public void setCHP(CharacterProperties characterProperties) {
        this._chp = characterProperties;
    }

    @Deprecated
    public void setPAP(ParagraphProperties paragraphProperties) {
        this._pap = paragraphProperties;
    }

    public byte[] toByteArray() {
        int i = 1;
        int length = this._baseLength + 2 + ((this._name.length() + 1) * 2) + this._upxs[0].size() + 2;
        while (true) {
            UPX[] upxArr = this._upxs;
            if (i >= upxArr.length) {
                break;
            }
            length = length + (upxArr[i - 1].size() % 2) + this._upxs[i].size() + 2;
            i++;
        }
        byte[] bArr = new byte[length];
        this._stdfBase.serialize(bArr, 0);
        int i2 = this._baseLength;
        char[] charArray = this._name.toCharArray();
        LittleEndian.putShort(bArr, this._baseLength, (short) charArray.length);
        int i3 = i2 + 2;
        for (char c : charArray) {
            LittleEndian.putShort(bArr, i3, (short) c);
            i3 += 2;
        }
        int i4 = i3 + 2;
        for (UPX upx : this._upxs) {
            short size = (short) upx.size();
            LittleEndian.putShort(bArr, i4, size);
            int i5 = i4 + 2;
            System.arraycopy(upx.getUPX(), 0, bArr, i5, size);
            i4 = i5 + size + (size % 2);
        }
        return bArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[STD]: '");
        sb.append(this._name);
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        sb.append(("\nStdfBase:\t" + this._stdfBase).replace("\n", "\n    "));
        sb.append(("\nStdfPost2000:\t" + this._stdfPost2000).replace("\n", "\n    "));
        for (UPX upx : this._upxs) {
            sb.append(("\nUPX:\t" + upx).replace("\n", "\n    "));
        }
        return sb.toString();
    }

    public StyleDescription(byte[] bArr, int i, int i2, boolean z) {
        boolean z2;
        short s;
        short s2;
        this._baseLength = i;
        int i3 = i2 + i;
        if (i == 18) {
            z2 = true;
        } else {
            if (i != 10) {
                LOG.atWarn().log("Style definition has non-standard size of {}", Unbox.box(i));
            }
            z2 = false;
        }
        this._stdfBase = new StdfBase(bArr, i2);
        int size = i2 + StdfBaseAbstractType.getSize();
        if (z2) {
            this._stdfPost2000 = new StdfPost2000(bArr, size);
        }
        if (z) {
            s = LittleEndian.getShort(bArr, i3);
            i3 += 2;
            s2 = 2;
        } else {
            s = bArr[i3];
            s2 = 1;
        }
        this._name = StringUtil.getFromUnicodeLE(bArr, i3, (s * s2) / 2);
        int i4 = ((s + 1) * s2) + i3;
        int cupx = this._stdfBase.getCupx();
        this._upxs = new UPX[cupx];
        for (int i5 = 0; i5 < cupx; i5++) {
            short s3 = LittleEndian.getShort(bArr, i4);
            int i6 = i4 + 2;
            this._upxs[i5] = new UPX(IOUtils.safelyClone(bArr, i6, s3, 32767));
            i4 = i6 + s3;
            if ((s3 & 1) == 1) {
                i4++;
            }
        }
    }
}
