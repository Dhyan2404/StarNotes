package org.apache.poi.xslf.util;

import java.awt.Graphics2D;
import java.awt.geom.Dimension2D;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.util.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public abstract class MFProxy implements Closeable {
    boolean ignoreParse;
    boolean quiet;

    public abstract void draw(Graphics2D graphics2D);

    public abstract Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings(int i);

    public abstract GenericRecord getRoot();

    public abstract Dimension2D getSize();

    public int getSlideCount() {
        return 1;
    }

    public abstract String getTitle();

    public abstract void parse(File file) throws IOException;

    public abstract void parse(InputStream inputStream) throws IOException;

    public abstract void setDefaultCharset(Charset charset);

    public void setIgnoreParse(boolean z) {
        this.ignoreParse = z;
    }

    public void setQuiet(boolean z) {
        this.quiet = z;
    }

    public void setSlideNo(int i) {
    }

    public Set<Integer> slideIndexes(String str) {
        return Collections.singleton(1);
    }
}
