package okio;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0005\n\u0002\b\n\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0082\b\u001a\r\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0086\b\"\u0014\u0010\b\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0007\"\u0014\u0010\n\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007\"\u0014\u0010\f\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007\"\u0014\u0010\u000e\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0007\"\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011\"\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011\"\u0014\u0010\u0016\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011\"\u0014\u0010\u0018\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011¨\u0006\u0019"}, m61528d2 = {"", "bit", "", "a", "Lokio/Source;", "Lokio/GzipSource;", "gzip", "I", "FHCRC", "b", "FEXTRA", "c", "FNAME", "d", "FCOMMENT", "", "e", "B", "SECTION_HEADER", C6997f.f39671c, "SECTION_BODY", C6998g.f39679a, "SECTION_TRAILER", C6999h.f39688c, "SECTION_DONE", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@JvmName(name = "-GzipSourceExtensions")
/* renamed from: okio.-GzipSourceExtensions, reason: invalid class name */
/* loaded from: classes11.dex */
public final class GzipSourceExtensions {

    /* renamed from: a */
    public static final int f103999a = 1;

    /* renamed from: b */
    public static final int f104000b = 2;

    /* renamed from: c */
    public static final int f104001c = 3;

    /* renamed from: d */
    public static final int f104002d = 4;

    /* renamed from: e */
    public static final byte f104003e = 0;

    /* renamed from: f */
    public static final byte f104004f = 1;

    /* renamed from: g */
    public static final byte f104005g = 2;

    /* renamed from: h */
    public static final byte f104006h = 3;

    /* renamed from: a */
    public static final boolean m64994a(int i, int i2) {
        return ((i >> i2) & 1) == 1;
    }

    @NotNull
    public static final GzipSource gzip(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new GzipSource(source);
    }
}
