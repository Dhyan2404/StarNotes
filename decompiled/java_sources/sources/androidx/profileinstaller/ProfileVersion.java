package androidx.profileinstaller;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ProfileVersion {
    public static final int MAX_SUPPORTED_SDK = 34;
    public static final int MIN_SUPPORTED_SDK = 24;

    /* renamed from: a */
    public static final byte[] f9146a = {48, TarConstants.LF_LINK, TarConstants.LF_DIR, 0};

    /* renamed from: b */
    public static final byte[] f9147b = {48, TarConstants.LF_LINK, 48, 0};

    /* renamed from: c */
    public static final byte[] f9148c = {48, 48, 57, 0};

    /* renamed from: d */
    public static final byte[] f9149d = {48, 48, TarConstants.LF_DIR, 0};

    /* renamed from: e */
    public static final byte[] f9150e = {48, 48, TarConstants.LF_LINK, 0};

    /* renamed from: f */
    public static final byte[] f9151f = {48, 48, TarConstants.LF_LINK, 0};

    /* renamed from: g */
    public static final byte[] f9152g = {48, 48, TarConstants.LF_SYMLINK, 0};

    /* renamed from: a */
    public static String m5451a(byte[] bArr) {
        return (Arrays.equals(bArr, f9150e) || Arrays.equals(bArr, f9149d)) ? ":" : "!";
    }
}
