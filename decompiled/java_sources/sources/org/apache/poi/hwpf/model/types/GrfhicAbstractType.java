package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class GrfhicAbstractType {
    protected byte field_1_grfhic;
    private static final BitField fHtmlChecked = new BitField(1);
    private static final BitField fHtmlUnsupported = new BitField(2);
    private static final BitField fHtmlListTextNotSharpDot = new BitField(4);
    private static final BitField fHtmlNotPeriod = new BitField(8);
    private static final BitField fHtmlFirstLineMismatch = new BitField(16);
    private static final BitField fHtmlTabLeftIndentMismatch = new BitField(32);
    private static final BitField fHtmlHangingIndentBeneathNumber = new BitField(64);
    private static final BitField fHtmlBuiltInBullet = new BitField(128);

    public static int getSize() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.field_1_grfhic == ((GrfhicAbstractType) obj).field_1_grfhic;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_grfhic = bArr[i + 0];
    }

    @Internal
    public byte getGrfhic() {
        return this.field_1_grfhic;
    }

    public int hashCode() {
        return Objects.hash(Byte.valueOf(this.field_1_grfhic));
    }

    @Internal
    public boolean isFHtmlBuiltInBullet() {
        return fHtmlBuiltInBullet.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlChecked() {
        return fHtmlChecked.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlFirstLineMismatch() {
        return fHtmlFirstLineMismatch.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlHangingIndentBeneathNumber() {
        return fHtmlHangingIndentBeneathNumber.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlListTextNotSharpDot() {
        return fHtmlListTextNotSharpDot.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlNotPeriod() {
        return fHtmlNotPeriod.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlTabLeftIndentMismatch() {
        return fHtmlTabLeftIndentMismatch.isSet(this.field_1_grfhic);
    }

    @Internal
    public boolean isFHtmlUnsupported() {
        return fHtmlUnsupported.isSet(this.field_1_grfhic);
    }

    public void serialize(byte[] bArr, int i) {
        bArr[i + 0] = this.field_1_grfhic;
    }

    @Internal
    public void setFHtmlBuiltInBullet(boolean z) {
        this.field_1_grfhic = (byte) fHtmlBuiltInBullet.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlChecked(boolean z) {
        this.field_1_grfhic = (byte) fHtmlChecked.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlFirstLineMismatch(boolean z) {
        this.field_1_grfhic = (byte) fHtmlFirstLineMismatch.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlHangingIndentBeneathNumber(boolean z) {
        this.field_1_grfhic = (byte) fHtmlHangingIndentBeneathNumber.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlListTextNotSharpDot(boolean z) {
        this.field_1_grfhic = (byte) fHtmlListTextNotSharpDot.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlNotPeriod(boolean z) {
        this.field_1_grfhic = (byte) fHtmlNotPeriod.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlTabLeftIndentMismatch(boolean z) {
        this.field_1_grfhic = (byte) fHtmlTabLeftIndentMismatch.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setFHtmlUnsupported(boolean z) {
        this.field_1_grfhic = (byte) fHtmlUnsupported.setBoolean(this.field_1_grfhic, z);
    }

    @Internal
    public void setGrfhic(byte b) {
        this.field_1_grfhic = b;
    }

    public String toString() {
        return "[Grfhic]\n    .grfhic               =  ( " + ((int) this.field_1_grfhic) + " )\n         .fHtmlChecked             = " + isFHtmlChecked() + "\n         .fHtmlUnsupported         = " + isFHtmlUnsupported() + "\n         .fHtmlListTextNotSharpDot     = " + isFHtmlListTextNotSharpDot() + "\n         .fHtmlNotPeriod           = " + isFHtmlNotPeriod() + "\n         .fHtmlFirstLineMismatch     = " + isFHtmlFirstLineMismatch() + "\n         .fHtmlTabLeftIndentMismatch     = " + isFHtmlTabLeftIndentMismatch() + "\n         .fHtmlHangingIndentBeneathNumber     = " + isFHtmlHangingIndentBeneathNumber() + "\n         .fHtmlBuiltInBullet       = " + isFHtmlBuiltInBullet() + "\n[/Grfhic]";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
