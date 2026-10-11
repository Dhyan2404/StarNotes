package sun.awt;

import com.google.firebase.installations.local.IidStore;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.security.AccessController;
import org.apache.commons.collections4.IteratorUtils;
import sun.security.action.GetPropertyAction;

/* loaded from: classes16.dex */
public class FontDescriptor implements Cloneable {
    static boolean isLE;
    String charsetName;
    public CharsetEncoder encoder;
    private int[] exclusionRanges;
    String nativeName;
    public CharsetEncoder unicodeEncoder;
    boolean useUnicode = false;

    static {
        NativeLibLoader.loadLibraries();
        initIDs();
        isLE = !"UnicodeBig".equals((String) AccessController.doPrivileged(new GetPropertyAction("sun.io.unicode.encoding", "UnicodeBig")));
    }

    public FontDescriptor(String str, CharsetEncoder charsetEncoder, int[] iArr) {
        this.nativeName = str;
        this.encoder = charsetEncoder;
        this.exclusionRanges = iArr;
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new ByteArrayOutputStream(), charsetEncoder.charset());
            this.charsetName = outputStreamWriter.getEncoding();
            outputStreamWriter.close();
        } catch (IOException unused) {
        }
    }

    private static void initIDs() {
    }

    public int[] getExclusionRanges() {
        return this.exclusionRanges;
    }

    public CharsetEncoder getFontCharsetEncoder() {
        return this.encoder;
    }

    public String getFontCharsetName() {
        return this.charsetName;
    }

    public String getNativeName() {
        return this.nativeName;
    }

    public boolean isExcluded(char c) {
        int i = 0;
        while (true) {
            int[] iArr = this.exclusionRanges;
            if (i >= iArr.length) {
                return false;
            }
            int i2 = i + 1;
            int i3 = iArr[i];
            int i4 = i2 + 1;
            int i5 = iArr[i2];
            if (c >= i3 && c <= i5) {
                return true;
            }
            i = i4;
        }
    }

    public String toString() {
        return super.toString() + " [" + this.nativeName + IidStore.f35940g + this.encoder + IteratorUtils.f104924b;
    }

    public boolean useUnicode() {
        if (this.useUnicode && this.unicodeEncoder == null) {
            try {
                this.unicodeEncoder = isLE ? StandardCharsets.UTF_16LE.newEncoder() : StandardCharsets.UTF_16BE.newEncoder();
            } catch (IllegalArgumentException unused) {
            }
        }
        return this.useUnicode;
    }
}
