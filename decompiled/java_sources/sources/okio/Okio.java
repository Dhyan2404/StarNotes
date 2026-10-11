package okio;

import com.sunia.HTREnginev2.mfk;
import com.sunia.HTREnginev2.nfk;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/mfk", "com/sunia/HTREnginev2/nfk"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 9, 0})
/* loaded from: classes11.dex */
public final class Okio {
    @NotNull
    public static final Sink appendingSink(@NotNull File file) throws FileNotFoundException {
        return mfk.m55596b(file);
    }

    @NotNull
    public static final FileSystem asResourceFileSystem(@NotNull ClassLoader classLoader) {
        return mfk.m55597c(classLoader);
    }

    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink blackhole() {
        return nfk.m55739a();
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink sink) {
        return nfk.m55740b(sink);
    }

    @NotNull
    public static final CipherSink cipherSink(@NotNull Sink sink, @NotNull Cipher cipher) {
        return mfk.m55598d(sink, cipher);
    }

    @NotNull
    public static final CipherSource cipherSource(@NotNull Source source, @NotNull Cipher cipher) {
        return mfk.m55599e(source, cipher);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull MessageDigest messageDigest) {
        return mfk.m55600f(sink, messageDigest);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull MessageDigest messageDigest) {
        return mfk.m55602h(source, messageDigest);
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError assertionError) {
        return mfk.m55604j(assertionError);
    }

    @NotNull
    public static final FileSystem openZip(@NotNull FileSystem fileSystem, @NotNull Path path) throws IOException {
        return mfk.m55605k(fileSystem, path);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file) throws FileNotFoundException {
        return mfk.m55606l(file);
    }

    @NotNull
    public static final Source source(@NotNull File file) throws FileNotFoundException {
        return mfk.m55612r(file);
    }

    public static final <T extends Closeable, R> R use(T t, @NotNull Function1<? super T, ? extends R> function1) {
        return (R) nfk.m55742d(t, function1);
    }

    @NotNull
    public static final BufferedSource buffer(@NotNull Source source) {
        return nfk.m55741c(source);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        return mfk.m55601g(sink, mac);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull Mac mac) {
        return mfk.m55603i(source, mac);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file, boolean z) throws FileNotFoundException {
        return mfk.m55607m(file, z);
    }

    @NotNull
    public static final Source source(@NotNull InputStream inputStream) {
        return mfk.m55613s(inputStream);
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream outputStream) {
        return mfk.m55608n(outputStream);
    }

    @NotNull
    public static final Source source(@NotNull Socket socket) throws IOException {
        return mfk.m55614t(socket);
    }

    @NotNull
    public static final Sink sink(@NotNull Socket socket) throws IOException {
        return mfk.m55609o(socket);
    }

    @NotNull
    public static final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) throws IOException {
        return mfk.m55615u(path, openOptionArr);
    }

    @NotNull
    public static final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) throws IOException {
        return mfk.m55610p(path, openOptionArr);
    }
}
