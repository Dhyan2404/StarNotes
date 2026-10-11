package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okio.CipherSink;
import okio.CipherSource;
import okio.FileSystem;
import okio.HashingSink;
import okio.HashingSource;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class mfk {

    /* renamed from: a */
    public static final Logger f77549a = Logger.getLogger("okio.Okio");

    @NotNull
    /* renamed from: b */
    public static final Sink m55596b(@NotNull File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(new FileOutputStream(file, true));
    }

    @NotNull
    /* renamed from: c */
    public static final FileSystem m55597c(@NotNull ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true, null, 4, null);
    }

    @NotNull
    /* renamed from: d */
    public static final CipherSink m55598d(@NotNull Sink sink, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSink(Okio.buffer(sink), cipher);
    }

    @NotNull
    /* renamed from: e */
    public static final CipherSource m55599e(@NotNull Source source, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSource(Okio.buffer(source), cipher);
    }

    @NotNull
    /* renamed from: f */
    public static final HashingSink m55600f(@NotNull Sink sink, @NotNull MessageDigest digest) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @NotNull
    /* renamed from: g */
    public static final HashingSink m55601g(@NotNull Sink sink, @NotNull Mac mac) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @NotNull
    /* renamed from: h */
    public static final HashingSource m55602h(@NotNull Source source, @NotNull MessageDigest digest) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSource(source, digest);
    }

    @NotNull
    /* renamed from: i */
    public static final HashingSource m55603i(@NotNull Source source, @NotNull Mac mac) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSource(source, mac);
    }

    /* renamed from: j */
    public static final boolean m55604j(@NotNull AssertionError assertionError) {
        Intrinsics.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false;
    }

    @NotNull
    /* renamed from: k */
    public static final FileSystem m55605k(@NotNull FileSystem fileSystem, @NotNull Path zipPath) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        return ZipFilesKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    /* renamed from: l */
    public static final Sink m55606l(@NotNull File file) throws FileNotFoundException {
        Sink m55611q;
        Intrinsics.checkNotNullParameter(file, "<this>");
        m55611q = m55611q(file, false, 1, null);
        return m55611q;
    }

    @JvmOverloads
    @NotNull
    /* renamed from: m */
    public static final Sink m55607m(@NotNull File file, boolean z) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(new FileOutputStream(file, z));
    }

    @NotNull
    /* renamed from: n */
    public static final Sink m55608n(@NotNull OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new mjk(outputStream, new Timeout());
    }

    @NotNull
    /* renamed from: o */
    public static final Sink m55609o(@NotNull Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        evm evmVar = new evm(socket);
        OutputStream outputStream = socket.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream(...)");
        return evmVar.sink(new mjk(outputStream, evmVar));
    }

    @NotNull
    /* renamed from: p */
    public static final Sink m55610p(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(...)");
        return Okio.sink(newOutputStream);
    }

    /* renamed from: q */
    public static /* synthetic */ Sink m55611q(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    @NotNull
    /* renamed from: r */
    public static final Source m55612r(@NotNull File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new bli(new FileInputStream(file), Timeout.NONE);
    }

    @NotNull
    /* renamed from: s */
    public static final Source m55613s(@NotNull InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new bli(inputStream, new Timeout());
    }

    @NotNull
    /* renamed from: t */
    public static final Source m55614t(@NotNull Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        evm evmVar = new evm(socket);
        InputStream inputStream = socket.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
        return evmVar.source(new bli(inputStream, evmVar));
    }

    @NotNull
    /* renamed from: u */
    public static final Source m55615u(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        InputStream newInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newInputStream, "newInputStream(...)");
        return Okio.source(newInputStream);
    }
}
