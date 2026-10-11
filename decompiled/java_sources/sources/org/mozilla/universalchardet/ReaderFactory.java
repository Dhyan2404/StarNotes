package org.mozilla.universalchardet;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.Objects;

/* loaded from: classes13.dex */
public final class ReaderFactory {
    public ReaderFactory() {
        throw new AssertionError("No instances allowed");
    }

    public static BufferedReader createBufferedReader(File file, Charset charset) throws IOException {
        Objects.requireNonNull(charset, "defaultCharset must be not null");
        String detectCharset = UniversalDetector.detectCharset(file);
        if (detectCharset != null) {
            charset = Charset.forName(detectCharset);
        }
        if (!charset.name().contains("UTF")) {
            return Files.newBufferedReader(file.toPath(), charset);
        }
        return new BufferedReader(new InputStreamReader(new UnicodeBOMInputStream(new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]))), charset));
    }

    @Deprecated
    public static Reader createReaderFromFile(File file, Charset charset) throws IOException {
        return createBufferedReader(file, charset);
    }

    @Deprecated
    public static Reader createReaderFromFile(File file) throws IOException {
        return createReaderFromFile(file, Charset.defaultCharset());
    }

    public static BufferedReader createBufferedReader(File file) throws IOException {
        return createBufferedReader(file, Charset.defaultCharset());
    }
}
