package okio.internal;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0019\u001a\u000f\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0000H\u0080\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002*\u00020\u0000H\u0080\b\u001a\f\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0002\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\u0016\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\u0000H\u0080\b¢\u0006\u0004\b\r\u0010\u000e\u001a\r\u0010\u000f\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010\u0010\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b\u001a\f\u0010\u0012\u001a\u00020\t*\u00020\u0000H\u0002\u001a\r\u0010\u0013\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001c\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tH\u0000\u001a\u0015\u0010\u0019\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\u0000*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u001b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0080\b\u001a\u0017\u0010\u001d\u001a\u00020\t*\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u001cH\u0080\b\u001a\r\u0010\u001e\u001a\u00020\u0007*\u00020\u0000H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\u0014\u0010 \u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0000\u001a\u0014\u0010!\u001a\u00020\u0000*\u00020\u00172\u0006\u0010\u0015\u001a\u00020\tH\u0000\u001a\f\u0010\"\u001a\u00020\u0005*\u00020\u0003H\u0002\u001a\f\u0010$\u001a\u00020\u0005*\u00020#H\u0002\u001a\u0014\u0010&\u001a\u00020\t*\u00020\u00172\u0006\u0010%\u001a\u00020\u0005H\u0002\"\u001a\u0010+\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010*\"\u001a\u0010.\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b,\u0010(\u0012\u0004\b-\u0010*\"\u001a\u00101\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b/\u0010(\u0012\u0004\b0\u0010*\"\u001a\u00104\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b2\u0010(\u0012\u0004\b3\u0010*\"\u001a\u00107\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b5\u0010(\u0012\u0004\b6\u0010*\"\u0018\u00109\u001a\u00020\u0007*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u00108\"\u001a\u0010%\u001a\u0004\u0018\u00010\u0005*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006<"}, m61528d2 = {"Lokio/Path;", "commonRoot", "", "", "commonSegments", "Lokio/ByteString;", "commonSegmentsBytes", "", "i", "", "commonIsAbsolute", "commonIsRelative", "", "commonVolumeLetter", "(Lokio/Path;)Ljava/lang/Character;", "commonNameBytes", "commonName", "commonParent", C6999h.f39688c, "commonIsRoot", "child", "normalize", "commonResolve", "Lokio/Buffer;", Constants.ATTRVAL_OTHER, "commonRelativeTo", "commonNormalized", "commonCompareTo", "", "commonEquals", "commonHashCode", "commonToString", "commonToPath", "toPath", "l", "", C4921e.f26537n, "slash", "j", "a", "Lokio/ByteString;", "getSLASH$annotations", "()V", "SLASH", "b", "getBACKSLASH$annotations", "BACKSLASH", "c", "getANY_SLASH$annotations", "ANY_SLASH", "d", "getDOT$annotations", "DOT", "e", "getDOT_DOT$annotations", "DOT_DOT", "(Lokio/Path;)I", "indexOfLastSlash", C6998g.f39679a, "(Lokio/Path;)Lokio/ByteString;", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n59#1,22:407\n209#1:433\n209#1:434\n1549#2:429\n1620#2,3:430\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n53#1:407,22\n199#1:433\n204#1:434\n53#1:429\n53#1:430,3\n*E\n"})
/* renamed from: okio.internal.-Path */
/* loaded from: classes11.dex */
public final class Path {

    /* renamed from: a */
    @NotNull
    public static final ByteString f104129a;

    /* renamed from: b */
    @NotNull
    public static final ByteString f104130b;

    /* renamed from: c */
    @NotNull
    public static final ByteString f104131c;

    /* renamed from: d */
    @NotNull
    public static final ByteString f104132d;

    /* renamed from: e */
    @NotNull
    public static final ByteString f104133e;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        f104129a = companion.encodeUtf8("/");
        f104130b = companion.encodeUtf8("\\");
        f104131c = companion.encodeUtf8("/\\");
        f104132d = companion.encodeUtf8(".");
        f104133e = companion.encodeUtf8(Constants.ATTRVAL_PARENT);
    }

    /* renamed from: a */
    public static /* synthetic */ void m65052a() {
    }

    /* renamed from: b */
    public static /* synthetic */ void m65053b() {
    }

    /* renamed from: c */
    public static /* synthetic */ void m65054c() {
    }

    public static final int commonCompareTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().compareTo(other.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String());
    }

    public static final boolean commonEquals(@NotNull okio.Path path, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return (obj instanceof okio.Path) && Intrinsics.areEqual(((okio.Path) obj).getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String());
    }

    public static final int commonHashCode(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().hashCode();
    }

    public static final boolean commonIsAbsolute(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return m65060i(path) != -1;
    }

    public static final boolean commonIsRelative(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return m65060i(path) == -1;
    }

    public static final boolean commonIsRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return m65060i(path) == path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size();
    }

    @NotNull
    public static final String commonName(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.nameBytes().utf8();
    }

    @NotNull
    public static final ByteString commonNameBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int m65056e = m65056e(path);
        return m65056e != -1 ? ByteString.substring$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), m65056e + 1, 0, 2, null) : (path.volumeLetter() == null || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() != 2) ? path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String() : ByteString.EMPTY;
    }

    @NotNull
    public static final okio.Path commonNormalized(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return okio.Path.INSTANCE.get(path.toString(), true);
    }

    @Nullable
    public static final okio.Path commonParent(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (Intrinsics.areEqual(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104132d) || Intrinsics.areEqual(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104129a) || Intrinsics.areEqual(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104130b) || m65059h(path)) {
            return null;
        }
        int m65056e = m65056e(path);
        if (m65056e == 2 && path.volumeLetter() != null) {
            if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() == 3) {
                return null;
            }
            return new okio.Path(ByteString.substring$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), 0, 3, 1, null));
        }
        if (m65056e == 1 && path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().startsWith(f104130b)) {
            return null;
        }
        if (m65056e != -1 || path.volumeLetter() == null) {
            return m65056e == -1 ? new okio.Path(f104132d) : m65056e == 0 ? new okio.Path(ByteString.substring$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), 0, 1, 1, null)) : new okio.Path(ByteString.substring$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), 0, m65056e, 1, null));
        }
        if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() == 2) {
            return null;
        }
        return new okio.Path(ByteString.substring$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), 0, 2, 1, null));
    }

    @NotNull
    public static final okio.Path commonRelativeTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(path.getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + CloudStorageConstants.OPERATION_AND + other).toString());
        }
        List<ByteString> segmentsBytes = path.getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < min && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i == min && path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() == other.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size()) {
            return Path.Companion.get$default(okio.Path.INSTANCE, ".", false, 1, (Object) null);
        }
        if (!(segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(f104133e) == -1)) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + CloudStorageConstants.OPERATION_AND + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString m65058g = m65058g(other);
        if (m65058g == null && (m65058g = m65058g(path)) == null) {
            m65058g = m65063l(okio.Path.DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i2 = i; i2 < size; i2++) {
            buffer.write(f104133e);
            buffer.write(m65058g);
        }
        int size2 = segmentsBytes.size();
        while (i < size2) {
            buffer.write(segmentsBytes.get(i));
            buffer.write(m65058g);
            i++;
        }
        return toPath(buffer, false);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull String child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z);
    }

    @Nullable
    public static final okio.Path commonRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int m65060i = m65060i(path);
        if (m65060i == -1) {
            return null;
        }
        return new okio.Path(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().substring(0, m65060i));
    }

    @NotNull
    public static final List<String> commonSegments(@NotNull okio.Path path) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int m65060i = m65060i(path);
        if (m65060i == -1) {
            m65060i = 0;
        } else if (m65060i < path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() && path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 92) {
            m65060i++;
        }
        int size = path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size();
        int i = m65060i;
        while (m65060i < size) {
            if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 47 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 92) {
                arrayList.add(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().substring(i, m65060i));
                i = m65060i + 1;
            }
            m65060i++;
        }
        if (i < path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size()) {
            arrayList.add(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().substring(i, path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size()));
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((ByteString) it2.next()).utf8());
        }
        return arrayList2;
    }

    @NotNull
    public static final List<ByteString> commonSegmentsBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int m65060i = m65060i(path);
        if (m65060i == -1) {
            m65060i = 0;
        } else if (m65060i < path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() && path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 92) {
            m65060i++;
        }
        int size = path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size();
        int i = m65060i;
        while (m65060i < size) {
            if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 47 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(m65060i) == 92) {
                arrayList.add(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().substring(i, m65060i));
                i = m65060i + 1;
            }
            m65060i++;
        }
        if (i < path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size()) {
            arrayList.add(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().substring(i, path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size()));
        }
        return arrayList;
    }

    @NotNull
    public static final okio.Path commonToPath(@NotNull String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    @NotNull
    public static final String commonToString(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().utf8();
    }

    @Nullable
    public static final Character commonVolumeLetter(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        boolean z = false;
        if (ByteString.indexOf$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104129a, 0, 2, (Object) null) != -1 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() < 2 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(1) != 58) {
            return null;
        }
        char c = (char) path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(0);
        if (!('a' <= c && c < '{')) {
            if ('A' <= c && c < '[') {
                z = true;
            }
            if (!z) {
                return null;
            }
        }
        return Character.valueOf(c);
    }

    /* renamed from: d */
    public static /* synthetic */ void m65055d() {
    }

    /* renamed from: e */
    public static final int m65056e(okio.Path path) {
        int lastIndexOf$default = ByteString.lastIndexOf$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104129a, 0, 2, (Object) null);
        return lastIndexOf$default != -1 ? lastIndexOf$default : ByteString.lastIndexOf$default(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String(), f104130b, 0, 2, (Object) null);
    }

    /* renamed from: f */
    public static /* synthetic */ void m65057f() {
    }

    /* renamed from: g */
    public static final ByteString m65058g(okio.Path path) {
        ByteString byteString = path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String();
        ByteString byteString2 = f104129a;
        if (ByteString.indexOf$default(byteString, byteString2, 0, 2, (Object) null) != -1) {
            return byteString2;
        }
        ByteString byteString3 = path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String();
        ByteString byteString4 = f104130b;
        if (ByteString.indexOf$default(byteString3, byteString4, 0, 2, (Object) null) != -1) {
            return byteString4;
        }
        return null;
    }

    /* renamed from: h */
    public static final boolean m65059h(okio.Path path) {
        return path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().endsWith(f104133e) && (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() == 2 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().rangeEquals(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() + (-3), f104129a, 0, 1) || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().rangeEquals(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() + (-3), f104130b, 0, 1));
    }

    /* renamed from: i */
    public static final int m65060i(okio.Path path) {
        if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() == 0) {
            return -1;
        }
        boolean z = false;
        if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(0) == 47) {
            return 1;
        }
        if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(0) == 92) {
            if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() <= 2 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(1) != 92) {
                return 1;
            }
            int indexOf = path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().indexOf(f104130b, 2);
            return indexOf == -1 ? path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() : indexOf;
        }
        if (path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().size() <= 2 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(1) != 58 || path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(2) != 92) {
            return -1;
        }
        char c = (char) path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String().getByte(0);
        if ('a' <= c && c < '{') {
            return 3;
        }
        if ('A' <= c && c < '[') {
            z = true;
        }
        return !z ? -1 : 3;
    }

    /* renamed from: j */
    public static final boolean m65061j(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, f104130b) || buffer.size() < 2 || buffer.getByte(1L) != 58) {
            return false;
        }
        char c = (char) buffer.getByte(0L);
        if (!('a' <= c && c < '{')) {
            if (!('A' <= c && c < '[')) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public static final ByteString m65062k(byte b) {
        if (b == 47) {
            return f104129a;
        }
        if (b == 92) {
            return f104130b;
        }
        throw new IllegalArgumentException("not a directory separator: " + ((int) b));
    }

    /* renamed from: l */
    public static final ByteString m65063l(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return f104129a;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return f104130b;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }

    @NotNull
    public static final okio.Path toPath(@NotNull Buffer buffer, boolean z) {
        ByteString byteString;
        ByteString readByteString;
        Object last;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        ByteString byteString2 = null;
        int i = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, f104129a)) {
                byteString = f104130b;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte readByte = buffer.readByte();
            if (byteString2 == null) {
                byteString2 = m65062k(readByte);
            }
            i++;
        }
        boolean z2 = i >= 2 && Intrinsics.areEqual(byteString2, byteString);
        if (z2) {
            Intrinsics.checkNotNull(byteString2);
            buffer2.write(byteString2);
            buffer2.write(byteString2);
        } else if (i > 0) {
            Intrinsics.checkNotNull(byteString2);
            buffer2.write(byteString2);
        } else {
            long indexOfElement = buffer.indexOfElement(f104131c);
            if (byteString2 == null) {
                byteString2 = indexOfElement == -1 ? m65063l(okio.Path.DIRECTORY_SEPARATOR) : m65062k(buffer.getByte(indexOfElement));
            }
            if (m65061j(buffer, byteString2)) {
                if (indexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        boolean z3 = buffer2.size() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long indexOfElement2 = buffer.indexOfElement(f104131c);
            if (indexOfElement2 == -1) {
                readByteString = buffer.readByteString();
            } else {
                readByteString = buffer.readByteString(indexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = f104133e;
            if (Intrinsics.areEqual(readByteString, byteString3)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (z) {
                        if (!z3) {
                            if (!arrayList.isEmpty()) {
                                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
                                if (Intrinsics.areEqual(last, byteString3)) {
                                }
                            }
                        }
                        if (!z2 || arrayList.size() != 1) {
                            CollectionsKt__MutableCollectionsKt.removeLastOrNull(arrayList);
                        }
                    }
                    arrayList.add(readByteString);
                }
            } else if (!Intrinsics.areEqual(readByteString, f104132d) && !Intrinsics.areEqual(readByteString, ByteString.EMPTY)) {
                arrayList.add(readByteString);
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                buffer2.write(byteString2);
            }
            buffer2.write((ByteString) arrayList.get(i2));
        }
        if (buffer2.size() == 0) {
            buffer2.write(f104132d);
        }
        return new okio.Path(buffer2.readByteString());
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull ByteString child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull Buffer child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(child, false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull okio.Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString m65058g = m65058g(path);
        if (m65058g == null && (m65058g = m65058g(child)) == null) {
            m65058g = m65063l(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String());
        if (buffer.size() > 0) {
            buffer.write(m65058g);
        }
        buffer.write(child.getOrg.mortbay.jetty.HttpHeaderValues.BYTES java.lang.String());
        return toPath(buffer, z);
    }
}
