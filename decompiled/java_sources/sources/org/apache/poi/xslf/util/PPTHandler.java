package org.apache.poi.xslf.util;

import java.awt.Graphics2D;
import java.awt.geom.Dimension2D;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.Spliterators;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.sl.usermodel.ObjectData;
import org.apache.poi.sl.usermodel.ObjectShape;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.SlideShowFactory;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.util.PPTX2PNG;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public class PPTHandler extends MFProxy {
    private static final String RANGE_PATTERN = "(^|,)(?<from>\\d+)?(-(?<to>\\d+))?";
    private SlideShow<?, ?> ppt;
    private Slide<?, ?> slide;

    /* JADX INFO: Access modifiers changed from: private */
    public static EmbeddedExtractor.EmbeddedPart fromObjectShape(Shape<?, ?> shape) {
        final ObjectData objectData = ((ObjectShape) shape).getObjectData();
        EmbeddedExtractor.EmbeddedPart embeddedPart = new EmbeddedExtractor.EmbeddedPart();
        embeddedPart.setName(objectData.getFileName());
        embeddedPart.setData(new Supplier() { // from class: org.apache.poi.xslf.util.b
            @Override // java.util.function.Supplier
            public final Object get() {
                byte[] lambda$fromObjectShape$3;
                lambda$fromObjectShape$3 = PPTHandler.lambda$fromObjectShape$3(ObjectData.this);
                return lambda$fromObjectShape$3;
            }
        });
        return embeddedPart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$fromObjectShape$3(ObjectData objectData) {
        try {
            InputStream inputStream = objectData.getInputStream();
            try {
                byte[] byteArray = IOUtils.toByteArray(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterator lambda$getEmbeddings$2(int i) {
        return this.ppt.getSlides().get(i).getShapes().stream().filter(new Predicate() { // from class: org.apache.poi.xslf.util.d
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$null$1;
                lambda$null$1 = PPTHandler.lambda$null$1((Shape) obj);
                return lambda$null$1;
            }
        }).map(new Function() { // from class: org.apache.poi.xslf.util.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                EmbeddedExtractor.EmbeddedPart fromObjectShape;
                fromObjectShape = PPTHandler.fromObjectShape((Shape) obj);
                return fromObjectShape;
            }
        }).iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$null$1(Shape shape) {
        return shape instanceof ObjectShape;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$range$0(int i, int i2) {
        return i2 <= i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Stream<Integer> range(Matcher matcher) {
        final int size = this.ppt.getSlides().size();
        String group = matcher.group("from");
        String group2 = matcher.group("to");
        int parseInt = (group == null || group.isEmpty()) ? 1 : Integer.parseInt(group);
        return IntStream.rangeClosed(parseInt, group2 == null ? parseInt : (group2.isEmpty() || ((group == null || group.isEmpty()) && "1".equals(group2))) ? size : Integer.parseInt(group2)).filter(new IntPredicate() { // from class: org.apache.poi.xslf.util.f
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean lambda$range$0;
                lambda$range$0 = PPTHandler.lambda$range$0(size, i);
                return lambda$range$0;
            }
        }).boxed();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SlideShow<?, ?> slideShow = this.ppt;
        if (slideShow != null) {
            slideShow.close();
        }
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void draw(Graphics2D graphics2D) {
        this.slide.draw(graphics2D);
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings(final int i) {
        return new Iterable() { // from class: org.apache.poi.xslf.util.a
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getEmbeddings$2;
                lambda$getEmbeddings$2 = PPTHandler.this.lambda$getEmbeddings$2(i);
                return lambda$getEmbeddings$2;
            }
        };
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public GenericRecord getRoot() {
        SlideShow<?, ?> slideShow = this.ppt;
        if (slideShow instanceof GenericRecord) {
            return (GenericRecord) slideShow;
        }
        return null;
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public Dimension2D getSize() {
        return this.ppt.getPageSize();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public int getSlideCount() {
        return this.ppt.getSlides().size();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public String getTitle() {
        return this.slide.getTitle();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void parse(File file) throws IOException {
        try {
            SlideShow<?, ?> create = SlideShowFactory.create(file, null, true);
            this.ppt = create;
            if (create != null) {
                this.slide = create.getSlides().get(0);
                return;
            }
            throw new IOException("Unknown file format or missing poi-scratchpad.jar / poi-ooxml.jar");
        } catch (IOException e) {
            if (e.getMessage().contains("scratchpad")) {
                throw new PPTX2PNG.NoScratchpadException(e);
            }
            throw e;
        }
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void setDefaultCharset(Charset charset) {
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void setSlideNo(int i) {
        this.slide = this.ppt.getSlides().get(i - 1);
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public Set<Integer> slideIndexes(String str) {
        final Matcher matcher = Pattern.compile(RANGE_PATTERN).matcher(str);
        return (Set) StreamSupport.stream(new Spliterators.AbstractSpliterator<Matcher>(str.length(), 272) { // from class: org.apache.poi.xslf.util.PPTHandler.1
            @Override // java.util.Spliterator
            public boolean tryAdvance(Consumer<? super Matcher> consumer) {
                boolean find = matcher.find();
                if (find) {
                    consumer.accept(matcher);
                }
                return find;
            }
        }, false).flatMap(new Function() { // from class: org.apache.poi.xslf.util.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream range;
                range = PPTHandler.this.range((Matcher) obj);
                return range;
            }
        }).collect(Collectors.toCollection(new Supplier() { // from class: com.sunia.HTREnginev2.clk
            @Override // java.util.function.Supplier
            public final Object get() {
                return new TreeSet();
            }
        }));
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void parse(InputStream inputStream) throws IOException {
        try {
            SlideShow<?, ?> create = SlideShowFactory.create(inputStream, (String) null);
            this.ppt = create;
            if (create != null) {
                this.slide = create.getSlides().get(0);
                return;
            }
            throw new IOException("Unknown file format or missing poi-scratchpad.jar / poi-ooxml.jar");
        } catch (IOException e) {
            if (e.getMessage().contains("scratchpad")) {
                throw new PPTX2PNG.NoScratchpadException(e);
            }
            throw e;
        }
    }
}
