package org.apache.poi.xslf.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Dimension2D;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.xslf.util.PPTX2PNG;

/* loaded from: classes13.dex */
public final class PPTX2PNG {
    private static final String OUTPUT_PAT_REGEX = "${basename}-${slideno}.${format}";
    private static final Logger LOG = LogManager.getLogger((Class<?>) PPTX2PNG.class);
    private static final String INPUT_PAT_REGEX = "(?<slideno>[^|]+)\\|(?<format>[^|]+)\\|(?<basename>.+)\\.(?<ext>[^.]++)";
    private static final Pattern INPUT_PATTERN = Pattern.compile(INPUT_PAT_REGEX);
    private String slidenumStr = "-1";
    private float scale = 1.0f;
    private File file = null;
    private String format = "png";
    private File outdir = null;
    private String outfile = null;
    private boolean quiet = false;
    private String outPattern = OUTPUT_PAT_REGEX;
    private File dumpfile = null;
    private String fixSide = "scale";
    private boolean ignoreParse = false;
    private boolean extractEmbedded = false;
    private FileMagic defaultFileType = FileMagic.OLE2;
    private boolean textAsShapes = false;
    private Charset charset = LocaleUtil.CHARSET_1252;
    private boolean emfHeaderBounds = false;
    private String fontDir = null;
    private String fontTtf = null;
    private String fontMap = null;

    /* renamed from: org.apache.poi.xslf.util.PPTX2PNG$2 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199372 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic;

        static {
            int[] iArr = new int[FileMagic.values().length];
            $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic = iArr;
            try {
                iArr[FileMagic.EMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.WMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class NoScratchpadException extends IOException {
        public NoScratchpadException() {
        }

        public NoScratchpadException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes13.dex */
    public interface ProxyConsumer {
        void parse(MFProxy mFProxy) throws IOException;
    }

    private PPTX2PNG() {
    }

    private String calcOutFile(MFProxy mFProxy, int i) {
        String str = this.outfile;
        if (str != null) {
            return str;
        }
        String name = this.file.getName();
        if ("stdin".equals(name)) {
            name = name + ".ext";
        }
        return INPUT_PATTERN.matcher(String.format(Locale.ROOT, "%04d|%s|%s", Integer.valueOf(i), this.format, name)).replaceAll((mFProxy.getSlideCount() <= 1 || i <= 0) ? this.outPattern.replaceAll("-?\\$\\{slideno}", "") : this.outPattern);
    }

    private void dumpRecords(MFProxy mFProxy) throws IOException {
        File file = this.dumpfile;
        if (file == null || "null".equals(file.getPath())) {
            return;
        }
        GenericRecord root = mFProxy.getRoot();
        GenericRecordJsonWriter genericRecordJsonWriter = new GenericRecordJsonWriter(this.dumpfile) { // from class: org.apache.poi.xslf.util.PPTX2PNG.1
            @Override // org.apache.poi.util.GenericRecordJsonWriter
            public boolean printBytes(String str, Object obj) {
                return false;
            }
        };
        try {
            if (root == null) {
                genericRecordJsonWriter.writeError(this.file.getName() + " doesn't support GenericRecord interface and can't be dumped to a file.");
            } else {
                genericRecordJsonWriter.write(root);
            }
            genericRecordJsonWriter.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    genericRecordJsonWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void extractEmbedded(MFProxy mFProxy, int i) throws IOException {
        if (this.extractEmbedded) {
            for (EmbeddedExtractor.EmbeddedPart embeddedPart : mFProxy.getEmbeddings(i)) {
                String name = embeddedPart.getName();
                if (name == null) {
                    name = "dummy.dat";
                }
                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.outdir, calcOutFile(mFProxy, i).replaceFirst("\\.\\w+$", "") + "_" + new File(name).getName()));
                try {
                    fileOutputStream.write(embeddedPart.getData().get());
                    fileOutputStream.close();
                } finally {
                }
            }
        }
    }

    private Charset getDefaultCharset() {
        return this.charset;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private double getDimensions(MFProxy mFProxy, Dimension2D dimension2D) {
        char c;
        Dimension2D size = mFProxy.getSize();
        String str = this.fixSide;
        switch (str.hashCode()) {
            case -1221029593:
                if (str.equals("height")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3327612:
                if (str.equals("long")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 109250890:
                if (str.equals("scale")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 109413500:
                if (str.equals("short")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 113126854:
                if (str.equals("width")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        double height = c != 2 ? c != 3 ? c != 4 ? c != 5 ? 1.0d : size.getHeight() : size.getWidth() : Math.min(size.getWidth(), size.getHeight()) : Math.max(size.getWidth(), size.getHeight());
        dimension2D.setSize((size.getWidth() * this.scale) / height, (size.getHeight() * this.scale) / height);
        return height;
    }

    private OutputFormat getOutput() {
        String str = this.format;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 107332:
                if (str.equals("log")) {
                    c = 0;
                    break;
                }
                break;
            case 110834:
                if (str.equals("pdf")) {
                    c = 1;
                    break;
                }
                break;
            case 114276:
                if (str.equals(FileTypeConstant.SVG)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new DummyFormat();
            case 1:
                return new PDFFormat(this.textAsShapes, this.fontDir, this.fontTtf);
            case 2:
                try {
                    return new SVGFormat(this.textAsShapes);
                } catch (Exception | NoClassDefFoundError e) {
                    LOG.atError().withThrowable(e).log("Batik is not not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG.");
                    return new BitmapFormat("png");
                }
            default:
                return new BitmapFormat(this.format);
        }
    }

    private MFProxy initProxy(final File file) throws IOException {
        FileMagic valueOf;
        ProxyConsumer proxyConsumer;
        if ("stdin".equals(file.getName().toLowerCase(Locale.ROOT))) {
            final InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(System.in);
            valueOf = FileMagic.valueOf(prepareToCheckMagic);
            proxyConsumer = new ProxyConsumer() { // from class: org.apache.poi.xslf.util.g
                @Override // org.apache.poi.xslf.util.PPTX2PNG.ProxyConsumer
                public final void parse(MFProxy mFProxy) {
                    mFProxy.parse(prepareToCheckMagic);
                }
            };
        } else {
            valueOf = FileMagic.valueOf(file);
            proxyConsumer = new ProxyConsumer() { // from class: org.apache.poi.xslf.util.h
                @Override // org.apache.poi.xslf.util.PPTX2PNG.ProxyConsumer
                public final void parse(MFProxy mFProxy) {
                    mFProxy.parse(file);
                }
            };
        }
        if (valueOf == FileMagic.UNKNOWN) {
            valueOf = this.defaultFileType;
        }
        int i = C199372.$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[valueOf.ordinal()];
        MFProxy pPTHandler = i != 1 ? i != 2 ? new PPTHandler() : new WMFHandler() : new EMFHandler();
        pPTHandler.setIgnoreParse(this.ignoreParse);
        pPTHandler.setQuiet(this.quiet);
        proxyConsumer.parse(pPTHandler);
        pPTHandler.setDefaultCharset(this.charset);
        return pPTHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$processFile$1(String[] strArr) {
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$processFile$2(String[] strArr) {
        return strArr[1];
    }

    public static void main(String[] strArr) throws Exception {
        PPTX2PNG pptx2png = new PPTX2PNG();
        if (pptx2png.parseCommandLine(strArr)) {
            pptx2png.processFile();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean parseCommandLine(java.lang.String[] r11) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.util.PPTX2PNG.parseCommandLine(java.lang.String[]):boolean");
    }

    private void processFile() throws IOException {
        String str;
        if (!this.quiet) {
            System.out.println("Processing " + this.file);
        }
        try {
            MFProxy initProxy = initProxy(this.file);
            try {
                Set<Integer> slideIndexes = initProxy.slideIndexes(this.slidenumStr);
                if (slideIndexes.isEmpty()) {
                    usage("slidenum must be either -1 (for all) or within range: [1.." + initProxy.getSlideCount() + "] for " + this.file);
                    initProxy.close();
                    return;
                }
                Dimension2DDouble dimension2DDouble = new Dimension2DDouble();
                double dimensions = getDimensions(initProxy, dimension2DDouble);
                int max = Math.max((int) Math.rint(dimension2DDouble.getWidth()), 1);
                int max2 = Math.max((int) Math.rint(dimension2DDouble.getHeight()), 1);
                OutputFormat output = getOutput();
                try {
                    Iterator<Integer> it2 = slideIndexes.iterator();
                    while (it2.hasNext()) {
                        int intValue = it2.next().intValue();
                        initProxy.setSlideNo(intValue);
                        if (!this.quiet) {
                            String title = initProxy.getTitle();
                            PrintStream printStream = System.out;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Rendering slide ");
                            sb.append(intValue);
                            if (title == null) {
                                str = "";
                            } else {
                                str = ": " + title.trim();
                            }
                            sb.append(str);
                            printStream.println(sb.toString());
                        }
                        dumpRecords(initProxy);
                        extractEmbedded(initProxy, intValue);
                        Graphics2D addSlide = output.addSlide(max, max2);
                        addSlide.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                        addSlide.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
                        addSlide.setRenderingHint(RenderingHints.KEY_COLOR_RENDERING, RenderingHints.VALUE_COLOR_RENDER_QUALITY);
                        addSlide.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
                        addSlide.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
                        addSlide.setRenderingHint(Drawable.DEFAULT_CHARSET, getDefaultCharset());
                        addSlide.setRenderingHint(Drawable.EMF_FORCE_HEADER_BOUNDS, Boolean.valueOf(this.emfHeaderBounds));
                        String str2 = this.fontMap;
                        if (str2 != null) {
                            addSlide.setRenderingHint(Drawable.FONT_MAP, (Map) Arrays.stream(str2.split(AndroidTreeView.f47214k)).map(new Function() { // from class: com.sunia.HTREnginev2.elk
                                @Override // java.util.function.Function
                                public final Object apply(Object obj) {
                                    String[] split;
                                    split = ((String) obj).split(":");
                                    return split;
                                }
                            }).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.flk
                                @Override // java.util.function.Function
                                public final Object apply(Object obj) {
                                    String lambda$processFile$1;
                                    lambda$processFile$1 = PPTX2PNG.lambda$processFile$1((String[]) obj);
                                    return lambda$processFile$1;
                                }
                            }, new Function() { // from class: com.sunia.HTREnginev2.glk
                                @Override // java.util.function.Function
                                public final Object apply(Object obj) {
                                    String lambda$processFile$2;
                                    lambda$processFile$2 = PPTX2PNG.lambda$processFile$2((String[]) obj);
                                    return lambda$processFile$2;
                                }
                            })));
                        }
                        float f = this.scale;
                        addSlide.scale(f / dimensions, f / dimensions);
                        addSlide.setComposite(AlphaComposite.Clear);
                        addSlide.fillRect(0, 0, max, max2);
                        addSlide.setComposite(AlphaComposite.SrcOver);
                        initProxy.draw(addSlide);
                        output.writeSlide(initProxy, new File(this.outdir, calcOutFile(initProxy, intValue)));
                    }
                    output.writeDocument(initProxy, new File(this.outdir, calcOutFile(initProxy, 0)));
                    output.close();
                    initProxy.close();
                    if (this.quiet) {
                        return;
                    }
                    System.out.println("Done");
                } finally {
                }
            } finally {
            }
        } catch (NoScratchpadException unused) {
            usage(CloudStorageConstants.SINGLE_QUOTES + this.file.getName() + "': Format not supported - try to include poi-scratchpad.jar into the CLASSPATH.");
        }
    }

    private static void usage(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or 'stdin'>\n");
        if (str == null) {
            str2 = "";
        } else {
            str2 = "Error: " + str + "\n";
        }
        sb.append(str2);
        sb.append("Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to '");
        sb.append(OUTPUT_PAT_REGEX);
        sb.append("'\n    -outpat <pattern> output filename pattern, defaults to '");
        sb.append(OUTPUT_PAT_REGEX);
        sb.append("'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don't have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>");
        System.out.println(sb.toString());
    }
}
