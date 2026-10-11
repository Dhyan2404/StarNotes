package org.apache.poi.util;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.PackedColorModel;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.io.output.NullOutputStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes13.dex */
public class GenericRecordJsonWriter implements Closeable {
    private static final String TABS;
    private static final String ZEROS = "0000000000000000";

    /* renamed from: aw */
    protected final AppendableWriter f111590aw;

    /* renamed from: fw */
    protected final PrintWriter f111591fw;
    private static final Pattern ESC_CHARS = Pattern.compile("[\"\\p{Cntrl}\\\\]");

    /* renamed from: NL */
    private static final String f111589NL = System.getProperty("line.separator");
    private static final List<Map.Entry<Class<?>, GenericRecordHandler>> handler = new ArrayList();
    protected int indent = 0;
    protected boolean withComments = true;
    protected int childIndex = 0;

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface GenericRecordHandler {
        boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj);
    }

    static {
        char[] cArr = new char[255];
        Arrays.fill(cArr, '\t');
        TABS = new String(cArr);
        handler(String.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.pzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printObject(str, obj);
            }
        });
        handler(Number.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.bzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printNumber(str, obj);
            }
        });
        handler(Boolean.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.czg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printBoolean(str, obj);
            }
        });
        handler(List.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.dzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printList(str, obj);
            }
        });
        handler(GenericRecord.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.ezg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printGenericRecord(str, obj);
            }
        });
        handler(GenericRecordUtil.AnnotatedFlag.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.fzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printAnnotatedFlag(str, obj);
            }
        });
        handler(byte[].class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.gzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printBytes(str, obj);
            }
        });
        handler(Point2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.hzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printPoint(str, obj);
            }
        });
        handler(Dimension2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.izg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printDimension(str, obj);
            }
        });
        handler(Rectangle2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.jzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printRectangle(str, obj);
            }
        });
        handler(Path2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.qzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printPath(str, obj);
            }
        });
        handler(AffineTransform.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.rzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printAffineTransform(str, obj);
            }
        });
        handler(Color.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.szg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printColor(str, obj);
            }
        });
        handler(BufferedImage.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.tzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printImage(str, obj);
            }
        });
        handler(Array.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.azg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printArray(str, obj);
            }
        });
        handler(Object.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.pzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str, Object obj) {
                return genericRecordJsonWriter.printObject(str, obj);
            }
        });
    }

    public GenericRecordJsonWriter(File file) throws IOException {
        AppendableWriter appendableWriter = new AppendableWriter((Writer) new OutputStreamWriter("null".equals(file.getName()) ? NullOutputStream.NULL_OUTPUT_STREAM : new FileOutputStream(file), StandardCharsets.UTF_8));
        this.f111590aw = appendableWriter;
        this.f111591fw = new PrintWriter(appendableWriter);
    }

    private static void handler(Class<?> cls, GenericRecordHandler genericRecordHandler) {
        handler.add(new AbstractMap.SimpleEntry(cls, genericRecordHandler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$printList$3(Object obj) {
        writeValue(null, obj);
        this.childIndex++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$writeChildren$1(GenericRecord genericRecord) {
        if (writeValue(null, genericRecord)) {
            int i = this.childIndex + 1;
            this.childIndex = i;
            if (i > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$writeProperties$0(Map.Entry entry) {
        return writeProp((String) entry.getKey(), (Supplier) entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$writeValue$2(Object obj, Map.Entry entry) {
        return matchInstanceOrArray((Class) entry.getKey(), obj);
    }

    public static String marshal(GenericRecord genericRecord) {
        return marshal(genericRecord, true);
    }

    public static boolean matchInstanceOrArray(Class<?> cls, Object obj) {
        return cls.isInstance(obj) || (Array.class.equals(cls) && obj.getClass().isArray());
    }

    public static String trimHex(long j, int i) {
        String hexString = Long.toHexString(j);
        int length = hexString.length();
        return ZEROS.substring(0, Math.max(0, i - length)) + hexString.substring(Math.max(0, length - i), length);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f111591fw.close();
    }

    public boolean printAffineTransform(String str, Object obj) {
        printName(str);
        AffineTransform affineTransform = (AffineTransform) obj;
        this.f111591fw.write("{ \"scaleX\": " + affineTransform.getScaleX() + ", \"shearX\": " + affineTransform.getShearX() + ", \"transX\": " + affineTransform.getTranslateX() + ", \"scaleY\": " + affineTransform.getScaleY() + ", \"shearY\": " + affineTransform.getShearY() + ", \"transY\": " + affineTransform.getTranslateY() + " }");
        return true;
    }

    public boolean printAnnotatedFlag(String str, Object obj) {
        printName(str);
        GenericRecordUtil.AnnotatedFlag annotatedFlag = (GenericRecordUtil.AnnotatedFlag) obj;
        this.f111591fw.print(annotatedFlag.getValue().get().longValue());
        if (!this.withComments) {
            return true;
        }
        this.f111591fw.write(" /* ");
        this.f111591fw.write(annotatedFlag.getDescription());
        this.f111591fw.write(" */ ");
        return true;
    }

    public boolean printArray(String str, Object obj) {
        printName(str);
        this.f111591fw.write(IteratorUtils.f104923a);
        int length = Array.getLength(obj);
        int i = this.childIndex;
        int i2 = 0;
        while (true) {
            this.childIndex = i2;
            int i3 = this.childIndex;
            if (i3 >= length) {
                this.childIndex = i;
                this.f111591fw.write(tabs() + "\t]");
                return true;
            }
            writeValue(null, Array.get(obj, i3));
            i2 = this.childIndex + 1;
        }
    }

    public boolean printBoolean(String str, Object obj) {
        printName(str);
        this.f111591fw.write(((Boolean) obj).toString());
        return true;
    }

    public boolean printBytes(String str, Object obj) {
        printName(str);
        this.f111591fw.write(34);
        this.f111591fw.write(Base64.getEncoder().encodeToString((byte[]) obj));
        this.f111591fw.write(34);
        return true;
    }

    public boolean printColor(String str, Object obj) {
        printName(str);
        int rgb = ((Color) obj).getRGB();
        this.f111591fw.print(rgb);
        if (!this.withComments) {
            return true;
        }
        this.f111591fw.write(" /* 0x");
        this.f111591fw.write(trimHex(rgb, 8));
        this.f111591fw.write(" */");
        return true;
    }

    public boolean printDimension(String str, Object obj) {
        printName(str);
        Dimension2D dimension2D = (Dimension2D) obj;
        this.f111591fw.write("{ \"width\": " + dimension2D.getWidth() + ", \"height\": " + dimension2D.getHeight() + " }");
        return true;
    }

    public boolean printGenericRecord(String str, Object obj) {
        printName(str);
        this.indent++;
        write((GenericRecord) obj);
        this.indent--;
        return true;
    }

    public boolean printImage(String str, Object obj) {
        BufferedImage bufferedImage = (BufferedImage) obj;
        String[] strArr = {"XYZ", "Lab", "Luv", "YCbCr", "Yxy", com.onyx.android.sdk.base.utils.ColorUtils.RGB_COLOR_START, "GRAY", "HSV", "HLS", "CMYK", HttpStatus.Unknown, "CMY", HttpStatus.Unknown};
        String[] strArr2 = {"CUSTOM", "INT_RGB", "INT_ARGB", "INT_ARGB_PRE", "INT_BGR", "3BYTE_BGR", "4BYTE_ABGR", "4BYTE_ABGR_PRE", "USHORT_565_RGB", "USHORT_555_RGB", "BYTE_GRAY", "USHORT_GRAY", "BYTE_BINARY", "BYTE_INDEXED"};
        printName(str);
        ColorModel colorModel = bufferedImage.getColorModel();
        String str2 = colorModel instanceof IndexColorModel ? "indexed" : colorModel instanceof ComponentColorModel ? Constants.ELEMNAME_COMPONENT_STRING : colorModel instanceof DirectColorModel ? DevicePublicKeyStringDef.DIRECT : colorModel instanceof PackedColorModel ? "packed" : "unknown";
        this.f111591fw.write("{ \"width\": " + bufferedImage.getWidth() + ", \"height\": " + bufferedImage.getHeight() + ", \"type\": \"" + strArr2[bufferedImage.getType()] + "\", \"colormodel\": \"" + str2 + "\", \"pixelBits\": " + colorModel.getPixelSize() + ", \"numComponents\": " + colorModel.getNumComponents() + ", \"colorSpace\": \"" + strArr[Math.min(colorModel.getColorSpace().getType(), 12)] + "\", \"transparency\": " + colorModel.getTransparency() + ", \"alpha\": " + colorModel.hasAlpha() + "}");
        return true;
    }

    public boolean printList(String str, Object obj) {
        printName(str);
        this.f111591fw.println(IteratorUtils.f104923a);
        int i = this.childIndex;
        this.childIndex = 0;
        ((List) obj).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.zyg
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                GenericRecordJsonWriter.this.lambda$printList$3(obj2);
            }
        });
        this.childIndex = i;
        this.f111591fw.write(tabs() + "\t]");
        return true;
    }

    public void printName(String str) {
        String str2;
        PrintWriter printWriter = this.f111591fw;
        if (str != null) {
            str2 = "\"" + str + "\": ";
        } else {
            str2 = "";
        }
        printWriter.print(str2);
    }

    public boolean printNull(String str, Object obj) {
        printName(str);
        this.f111591fw.write("null");
        return true;
    }

    public boolean printNumber(String str, Object obj) {
        Number number = (Number) obj;
        printName(str);
        if (obj instanceof Float) {
            this.f111591fw.print(number.floatValue());
            return true;
        }
        if (obj instanceof Double) {
            this.f111591fw.print(number.doubleValue());
            return true;
        }
        this.f111591fw.print(number.longValue());
        int i = number instanceof Byte ? 2 : number instanceof Short ? 4 : number instanceof Integer ? 8 : number instanceof Long ? 16 : -1;
        long longValue = number.longValue();
        if (this.withComments && i > 0 && (longValue < 0 || longValue > 9)) {
            this.f111591fw.write(" /* 0x");
            this.f111591fw.write(trimHex(longValue, i));
            this.f111591fw.write(" */");
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
    
        if (r2.equals("\t") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean printObject(java.lang.String r9, java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.util.GenericRecordJsonWriter.printObject(java.lang.String, java.lang.Object):boolean");
    }

    public boolean printPath(String str, Object obj) {
        printName(str);
        PathIterator pathIterator = ((Path2D) obj).getPathIterator(null);
        double[] dArr = new double[6];
        this.f111591fw.write(IteratorUtils.f104923a);
        this.indent += 2;
        String tabs = tabs();
        this.indent -= 2;
        boolean z = false;
        while (!pathIterator.isDone()) {
            this.f111591fw.println(z ? ", " : "");
            this.f111591fw.print(tabs);
            int currentSegment = pathIterator.currentSegment(dArr);
            this.f111591fw.append((CharSequence) "{ \"type\": ");
            if (currentSegment == 0) {
                this.f111591fw.write("\"move\", \"x\": " + dArr[0] + ", \"y\": " + dArr[1]);
            } else if (currentSegment == 1) {
                this.f111591fw.write("\"lineto\", \"x\": " + dArr[0] + ", \"y\": " + dArr[1]);
            } else if (currentSegment == 2) {
                this.f111591fw.write("\"quad\", \"x1\": " + dArr[0] + ", \"y1\": " + dArr[1] + ", \"x2\": " + dArr[2] + ", \"y2\": " + dArr[3]);
            } else if (currentSegment == 3) {
                this.f111591fw.write("\"cubic\", \"x1\": " + dArr[0] + ", \"y1\": " + dArr[1] + ", \"x2\": " + dArr[2] + ", \"y2\": " + dArr[3] + ", \"x3\": " + dArr[4] + ", \"y3\": " + dArr[5]);
            } else if (currentSegment == 4) {
                this.f111591fw.write("\"close\"");
            }
            this.f111591fw.append((CharSequence) " }");
            pathIterator.next();
            z = true;
        }
        this.f111591fw.write(IteratorUtils.f104924b);
        return true;
    }

    public boolean printPoint(String str, Object obj) {
        printName(str);
        Point2D point2D = (Point2D) obj;
        this.f111591fw.write("{ \"x\": " + point2D.getX() + ", \"y\": " + point2D.getY() + " }");
        return true;
    }

    public boolean printRectangle(String str, Object obj) {
        printName(str);
        Rectangle2D rectangle2D = (Rectangle2D) obj;
        this.f111591fw.write("{ \"x\": " + rectangle2D.getX() + ", \"y\": " + rectangle2D.getY() + ", \"width\": " + rectangle2D.getWidth() + ", \"height\": " + rectangle2D.getHeight() + " }");
        return true;
    }

    public void setWithComments(boolean z) {
        this.withComments = z;
    }

    public String tabs() {
        String str = TABS;
        return str.substring(0, Math.min(this.indent, str.length()));
    }

    public void write(GenericRecord genericRecord) {
        String tabs = tabs();
        Enum<?> genericRecordType = genericRecord.getGenericRecordType();
        String name = genericRecordType != null ? genericRecordType.name() : genericRecord.getClass().getSimpleName();
        this.f111591fw.append((CharSequence) tabs);
        this.f111591fw.append((CharSequence) "{");
        if (this.withComments) {
            this.f111591fw.append((CharSequence) "   /* ");
            this.f111591fw.append((CharSequence) name);
            if (this.childIndex > 0) {
                this.f111591fw.append((CharSequence) " - index: ");
                this.f111591fw.print(this.childIndex);
            }
            this.f111591fw.append((CharSequence) " */");
        }
        this.f111591fw.println();
        boolean writeProperties = writeProperties(genericRecord);
        this.f111591fw.println();
        writeChildren(genericRecord, writeProperties);
        this.f111591fw.append((CharSequence) tabs);
        this.f111591fw.append((CharSequence) "}");
    }

    public boolean writeChildren(GenericRecord genericRecord, boolean z) {
        List<? extends GenericRecord> genericChildren = genericRecord.getGenericChildren();
        if (genericChildren == null || genericChildren.isEmpty()) {
            return false;
        }
        this.indent++;
        AppendableWriter appendableWriter = this.f111590aw;
        StringBuilder sb = new StringBuilder();
        sb.append(tabs());
        sb.append(z ? ", " : "");
        sb.append("\"children\": [");
        sb.append(f111589NL);
        appendableWriter.setHoldBack(sb.toString());
        int i = this.childIndex;
        this.childIndex = 0;
        long count = genericChildren.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.lzg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$writeChildren$1;
                lambda$writeChildren$1 = GenericRecordJsonWriter.this.lambda$writeChildren$1((GenericRecord) obj);
                return lambda$writeChildren$1;
            }
        }).count();
        this.childIndex = i;
        this.f111590aw.setHoldBack(null);
        if (count > 0) {
            this.f111591fw.println();
            this.f111591fw.println(tabs() + IteratorUtils.f104924b);
        }
        this.indent--;
        return count > 0;
    }

    public void writeError(String str) {
        this.f111591fw.append((CharSequence) "{ error: ");
        printObject("error", str);
        this.f111591fw.append((CharSequence) " }");
    }

    public boolean writeProp(String str, Supplier<?> supplier) {
        StringBuilder sb;
        String str2;
        boolean z = this.childIndex > 0;
        AppendableWriter appendableWriter = this.f111590aw;
        if (z) {
            sb = new StringBuilder();
            sb.append(f111589NL);
            sb.append(tabs());
            str2 = "\t, ";
        } else {
            sb = new StringBuilder();
            sb.append(tabs());
            str2 = "\t  ";
        }
        sb.append(str2);
        appendableWriter.setHoldBack(sb.toString());
        int i = this.childIndex;
        this.childIndex = 0;
        boolean writeValue = writeValue(str, supplier.get());
        this.childIndex = i + (writeValue ? 1 : 0);
        this.f111590aw.setHoldBack(null);
        return writeValue;
    }

    public boolean writeProperties(GenericRecord genericRecord) {
        Map<String, Supplier<?>> genericProperties = genericRecord.getGenericProperties();
        if (genericProperties == null || genericProperties.isEmpty()) {
            return false;
        }
        int i = this.childIndex;
        this.childIndex = 0;
        long count = genericProperties.entrySet().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.kzg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$writeProperties$0;
                lambda$writeProperties$0 = GenericRecordJsonWriter.this.lambda$writeProperties$0((Map.Entry) obj);
                return lambda$writeProperties$0;
            }
        }).count();
        this.childIndex = i;
        return count > 0;
    }

    public boolean writeValue(String str, final Object obj) {
        if (this.childIndex > 0) {
            this.f111590aw.setHoldBack(",");
        }
        GenericRecordHandler genericRecordHandler = obj == null ? new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.mzg
            @Override // org.apache.poi.util.GenericRecordJsonWriter.GenericRecordHandler
            public final boolean print(GenericRecordJsonWriter genericRecordJsonWriter, String str2, Object obj2) {
                return genericRecordJsonWriter.printNull(str2, obj2);
            }
        } : (GenericRecordHandler) handler.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.nzg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                boolean lambda$writeValue$2;
                lambda$writeValue$2 = GenericRecordJsonWriter.lambda$writeValue$2(obj, (Map.Entry) obj2);
                return lambda$writeValue$2;
            }
        }).findFirst().map(new Function() { // from class: com.sunia.HTREnginev2.ozg
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return (GenericRecordJsonWriter.GenericRecordHandler) ((Map.Entry) obj2).getValue();
            }
        }).orElse(null);
        boolean z = genericRecordHandler != null && genericRecordHandler.print(this, str, obj);
        this.f111590aw.setHoldBack(null);
        return z;
    }

    public static String marshal(GenericRecord genericRecord, boolean z) {
        StringBuilder sb = new StringBuilder();
        try {
            GenericRecordJsonWriter genericRecordJsonWriter = new GenericRecordJsonWriter(sb);
            try {
                genericRecordJsonWriter.setWithComments(z);
                genericRecordJsonWriter.write(genericRecord);
                String sb2 = sb.toString();
                genericRecordJsonWriter.close();
                return sb2;
            } finally {
            }
        } catch (IOException unused) {
            return "{}";
        }
    }

    /* loaded from: classes13.dex */
    public static class AppendableWriter extends Writer {
        private final Appendable appender;
        private String holdBack;
        private final Writer writer;

        public AppendableWriter(Appendable appendable) {
            super(appendable);
            this.appender = appendable;
            this.writer = null;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flush();
            Object obj = this.appender;
            if (obj == null) {
                obj = this.writer;
            }
            if (obj instanceof Closeable) {
                ((Closeable) obj).close();
            }
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            Object obj = this.appender;
            if (obj == null) {
                obj = this.writer;
            }
            if (obj instanceof Flushable) {
                ((Flushable) obj).flush();
            }
        }

        public void setHoldBack(String str) {
            this.holdBack = str;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            String str = this.holdBack;
            if (str != null) {
                Appendable appendable = this.appender;
                if (appendable != null) {
                    appendable.append(str);
                } else {
                    Writer writer = this.writer;
                    if (writer != null) {
                        writer.write(str);
                    }
                }
                this.holdBack = null;
            }
            Appendable appendable2 = this.appender;
            if (appendable2 != null) {
                appendable2.append(String.valueOf(cArr), i, i2);
                return;
            }
            Writer writer2 = this.writer;
            if (writer2 != null) {
                writer2.write(cArr, i, i2);
            }
        }

        public AppendableWriter(Writer writer) {
            super(writer);
            this.appender = null;
            this.writer = writer;
        }
    }

    public GenericRecordJsonWriter(Appendable appendable) {
        AppendableWriter appendableWriter = new AppendableWriter(appendable);
        this.f111590aw = appendableWriter;
        this.f111591fw = new PrintWriter(appendableWriter);
    }
}
