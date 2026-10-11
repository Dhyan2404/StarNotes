package org.apache.poi.util;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
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
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.io.output.NullOutputStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.GenericRecordXmlWriter;

/* loaded from: classes13.dex */
public class GenericRecordXmlWriter implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TABS;
    private static final String ZEROS = "0000000000000000";

    /* renamed from: fw */
    private final PrintWriter f111592fw;
    private static final Pattern ESC_CHARS = Pattern.compile("[<>&'\"\\p{Cntrl}]");
    private static final List<Map.Entry<Class<?>, GenericRecordHandler>> handler = new ArrayList();
    private int indent = 0;
    private boolean withComments = true;
    private int childIndex = 0;
    private boolean attributePhase = true;

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface GenericRecordHandler {
        boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj);
    }

    static {
        char[] cArr = new char[255];
        Arrays.fill(cArr, '\t');
        TABS = new String(cArr);
        handler(String.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.s0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printObject(str, obj);
            }
        });
        handler(Number.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.d0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printNumber(str, obj);
            }
        });
        handler(Boolean.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.e0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printBoolean(str, obj);
            }
        });
        handler(List.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.f0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printList(str, obj);
            }
        });
        handler(GenericRecordUtil.AnnotatedFlag.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.g0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printAnnotatedFlag(str, obj);
            }
        });
        handler(byte[].class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.h0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printBytes(str, obj);
            }
        });
        handler(Point2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.i0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printPoint(str, obj);
            }
        });
        handler(Dimension2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.j0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printDimension(str, obj);
            }
        });
        handler(Rectangle2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.k0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printRectangle(str, obj);
            }
        });
        handler(Path2D.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.l0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printPath(str, obj);
            }
        });
        handler(AffineTransform.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.t0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printAffineTransform(str, obj);
            }
        });
        handler(Color.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.u0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printColor(str, obj);
            }
        });
        handler(BufferedImage.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.v0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printBufferedImage(str, obj);
            }
        });
        handler(Array.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.c0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printArray(str, obj);
            }
        });
        handler(Object.class, new GenericRecordHandler() { // from class: com.sunia.HTREnginev2.s0h
            @Override // org.apache.poi.util.GenericRecordXmlWriter.GenericRecordHandler
            public final boolean print(GenericRecordXmlWriter genericRecordXmlWriter, String str, Object obj) {
                return genericRecordXmlWriter.printObject(str, obj);
            }
        });
    }

    public GenericRecordXmlWriter(File file) throws IOException {
        this.f111592fw = new PrintWriter(new OutputStreamWriter("null".equals(file.getName()) ? NullOutputStream.NULL_OUTPUT_STREAM : new FileOutputStream(file), StandardCharsets.UTF_8));
    }

    private static void handler(Class<?> cls, GenericRecordHandler genericRecordHandler) {
        handler.add(new AbstractMap.SimpleEntry(cls, genericRecordHandler));
    }

    public static boolean isComplex(Object obj) {
        return ((obj instanceof Number) || (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof String) || (obj instanceof Color) || (obj instanceof Enum)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$printList$4(Object obj) {
        writeValue("item>", obj);
        this.childIndex++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeChildren$0(GenericRecord genericRecord) {
        writeValue("record", genericRecord);
        this.childIndex++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$writeProp$1(Object obj) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$writeValue$2(Object obj, Map.Entry entry) {
        return matchInstanceOrArray((Class) entry.getKey(), obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeValue$3(String str, Object obj, Map.Entry entry) {
        ((GenericRecordHandler) entry.getValue()).print(this, str, obj);
    }

    public static String marshal(GenericRecord genericRecord) {
        return marshal(genericRecord, true);
    }

    public static boolean matchInstanceOrArray(Class<?> cls, Object obj) {
        return cls.isInstance(obj) || (Array.class.equals(cls) && obj.getClass().isArray());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f111592fw.close();
    }

    public void closeName(String str) {
        String replace = str.replace(">>", ">");
        if (this.attributePhase) {
            this.f111592fw.append((CharSequence) "\"");
            return;
        }
        if (!replace.endsWith(">")) {
            this.f111592fw.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
            return;
        }
        this.f111592fw.println(tabs() + "\t</" + replace);
    }

    public void openName(String str) {
        String replace = str.replace(">>", ">");
        if (this.attributePhase) {
            this.f111592fw.print(" " + replace.replace('>', ' ').trim() + "=\"");
            return;
        }
        this.f111592fw.print(tabs() + "<" + replace);
        if (replace.endsWith(">")) {
            this.f111592fw.println();
        }
    }

    public boolean printAffineTransform(String str, Object obj) {
        openName(str);
        AffineTransform affineTransform = (AffineTransform) obj;
        this.f111592fw.write("<" + str + " scaleX=\"" + affineTransform.getScaleX() + "\" shearX=\"" + affineTransform.getShearX() + "\" transX=\"" + affineTransform.getTranslateX() + "\" scaleY=\"" + affineTransform.getScaleY() + "\" shearY=\"" + affineTransform.getShearY() + "\" transY=\"" + affineTransform.getTranslateY() + "\"/>");
        closeName(str);
        return true;
    }

    public boolean printAnnotatedFlag(String str, Object obj) {
        GenericRecordUtil.AnnotatedFlag annotatedFlag = (GenericRecordUtil.AnnotatedFlag) obj;
        Number number = annotatedFlag.getValue().get();
        int i = number instanceof Byte ? 2 : number instanceof Short ? 4 : number instanceof Integer ? 8 : 16;
        openName(str);
        this.f111592fw.print(" flag=\"0x");
        this.f111592fw.print(trimHex(number.longValue(), i));
        this.f111592fw.print('\"');
        if (this.withComments) {
            this.f111592fw.print(" description=\"");
            this.f111592fw.print(annotatedFlag.getDescription());
            this.f111592fw.print("\"");
        }
        closeName(str);
        return true;
    }

    public boolean printArray(String str, Object obj) {
        openName(str + ">");
        int length = Array.getLength(obj);
        int i = this.childIndex;
        int i2 = 0;
        while (true) {
            this.childIndex = i2;
            int i3 = this.childIndex;
            if (i3 >= length) {
                this.childIndex = i;
                closeName(str + ">");
                return true;
            }
            writeValue("item>", Array.get(obj, i3));
            i2 = this.childIndex + 1;
        }
    }

    public boolean printBoolean(String str, Object obj) {
        openName(str);
        this.f111592fw.write(((Boolean) obj).toString());
        closeName(str);
        return true;
    }

    public boolean printBufferedImage(String str, Object obj) {
        openName(str);
        BufferedImage bufferedImage = (BufferedImage) obj;
        this.f111592fw.println(" width=\"" + bufferedImage.getWidth() + "\" height=\"" + bufferedImage.getHeight() + "\" bands=\"" + bufferedImage.getColorModel().getNumComponents() + "\"");
        closeName(str);
        return true;
    }

    public boolean printBytes(String str, Object obj) {
        openName(str + ">");
        this.f111592fw.write(Base64.getEncoder().encodeToString((byte[]) obj));
        closeName(str + ">");
        return true;
    }

    public boolean printColor(String str, Object obj) {
        openName(str);
        int rgb = ((Color) obj).getRGB();
        this.f111592fw.print("0x" + trimHex(rgb, 8));
        closeName(str);
        return true;
    }

    public boolean printDimension(String str, Object obj) {
        openName(str);
        Dimension2D dimension2D = (Dimension2D) obj;
        this.f111592fw.println(" width=\"" + dimension2D.getWidth() + "\" height=\"" + dimension2D.getHeight() + "\"/>");
        closeName(str);
        return true;
    }

    public void printGenericRecord(String str, Object obj) {
        write(str, (GenericRecord) obj);
    }

    public boolean printList(String str, Object obj) {
        openName(str + ">");
        int i = this.childIndex;
        this.childIndex = 0;
        ((List) obj).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.n0h
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                GenericRecordXmlWriter.this.lambda$printList$4(obj2);
            }
        });
        this.childIndex = i;
        closeName(str + ">");
        return true;
    }

    public boolean printNumber(String str, Object obj) {
        openName(str);
        this.f111592fw.print(((Number) obj).toString());
        closeName(str);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r3.equals(org.scribe.model.ParameterList.f115951c) == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean printObject(java.lang.String r8, java.lang.Object r9) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r1 = ">"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r7.openName(r0)
            java.lang.String r9 = r9.toString()
            java.util.regex.Pattern r0 = org.apache.poi.util.GenericRecordXmlWriter.ESC_CHARS
            java.util.regex.Matcher r0 = r0.matcher(r9)
            r2 = 0
            r3 = r2
        L20:
            boolean r4 = r0.find()
            r5 = 1
            if (r4 == 0) goto Lc0
            java.io.PrintWriter r4 = r7.f111592fw
            int r6 = r0.start()
            r4.write(r9, r3, r6)
            java.lang.String r3 = r0.group()
            r3.hashCode()
            int r4 = r3.hashCode()
            r6 = -1
            switch(r4) {
                case 34: goto L69;
                case 38: goto L60;
                case 39: goto L55;
                case 60: goto L4a;
                case 62: goto L41;
                default: goto L3f;
            }
        L3f:
            r5 = r6
            goto L73
        L41:
            boolean r4 = r3.equals(r1)
            if (r4 != 0) goto L48
            goto L3f
        L48:
            r5 = 4
            goto L73
        L4a:
            java.lang.String r4 = "<"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L53
            goto L3f
        L53:
            r5 = 3
            goto L73
        L55:
            java.lang.String r4 = "'"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L5e
            goto L3f
        L5e:
            r5 = 2
            goto L73
        L60:
            java.lang.String r4 = "&"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L73
            goto L3f
        L69:
            java.lang.String r4 = "\""
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L72
            goto L3f
        L72:
            r5 = r2
        L73:
            switch(r5) {
                case 0: goto Lb3;
                case 1: goto Lab;
                case 2: goto La3;
                case 3: goto L9b;
                case 4: goto L93;
                default: goto L76;
            }
        L76:
            java.io.PrintWriter r4 = r7.f111592fw
            java.lang.String r5 = "&#x"
            r4.write(r5)
            java.io.PrintWriter r4 = r7.f111592fw
            int r3 = r3.codePointAt(r2)
            long r5 = (long) r3
            java.lang.String r3 = java.lang.Long.toHexString(r5)
            r4.write(r3)
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = ";"
            r3.write(r4)
            goto Lba
        L93:
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = "&gt;"
            r3.write(r4)
            goto Lba
        L9b:
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = "&lt;"
            r3.write(r4)
            goto Lba
        La3:
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = "&apos;"
            r3.write(r4)
            goto Lba
        Lab:
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = "&amp;"
            r3.write(r4)
            goto Lba
        Lb3:
            java.io.PrintWriter r3 = r7.f111592fw
            java.lang.String r4 = "&quot;"
            r3.write(r4)
        Lba:
            int r3 = r0.end()
            goto L20
        Lc0:
            java.io.PrintWriter r0 = r7.f111592fw
            int r2 = r9.length()
            r0.append(r9, r3, r2)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r8)
            r9.append(r1)
            java.lang.String r8 = r9.toString()
            r7.closeName(r8)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.util.GenericRecordXmlWriter.printObject(java.lang.String, java.lang.Object):boolean");
    }

    public boolean printPath(String str, Object obj) {
        int i;
        openName(str + ">");
        PathIterator pathIterator = ((Path2D) obj).getPathIterator(null);
        double[] dArr = new double[6];
        int i2 = 2;
        this.indent += 2;
        String tabs = tabs();
        this.indent -= 2;
        while (!pathIterator.isDone()) {
            this.f111592fw.print(tabs);
            int currentSegment = pathIterator.currentSegment(dArr);
            this.f111592fw.print("<pathelement ");
            if (currentSegment == 0) {
                i = i2;
                this.f111592fw.print("type=\"move\" x=\"" + dArr[0] + "\" y=\"" + dArr[1] + "\"");
            } else if (currentSegment == 1) {
                i = i2;
                this.f111592fw.print("type=\"lineto\" x=\"" + dArr[0] + "\" y=\"" + dArr[1] + "\"");
            } else if (currentSegment == i2) {
                PrintWriter printWriter = this.f111592fw;
                StringBuilder sb = new StringBuilder();
                sb.append("type=\"quad\" x1=\"");
                sb.append(dArr[0]);
                sb.append("\" y1=\"");
                sb.append(dArr[1]);
                sb.append("\" x2=\"");
                i = 2;
                sb.append(dArr[2]);
                sb.append("\" y2=\"");
                sb.append(dArr[3]);
                sb.append("\"");
                printWriter.print(sb.toString());
            } else if (currentSegment != 3) {
                if (currentSegment == 4) {
                    this.f111592fw.print("type=\"close\"");
                }
                i = i2;
            } else {
                this.f111592fw.print("type=\"cubic\" x1=\"" + dArr[0] + "\" y1=\"" + dArr[1] + "\" x2=\"" + dArr[2] + "\" y2=\"" + dArr[3] + "\" x3=\"" + dArr[4] + "\" y3=\"" + dArr[5] + "\"");
                i = 2;
            }
            this.f111592fw.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
            pathIterator.next();
            i2 = i;
        }
        closeName(str + ">");
        return true;
    }

    public boolean printPoint(String str, Object obj) {
        openName(str);
        Point2D point2D = (Point2D) obj;
        this.f111592fw.println(" x=\"" + point2D.getX() + "\" y=\"" + point2D.getY() + "\"/>");
        closeName(str);
        return true;
    }

    public boolean printRectangle(String str, Object obj) {
        openName(str);
        Rectangle2D rectangle2D = (Rectangle2D) obj;
        this.f111592fw.println(" x=\"" + rectangle2D.getX() + "\" y=\"" + rectangle2D.getY() + "\" width=\"" + rectangle2D.getWidth() + "\" height=\"" + rectangle2D.getHeight() + "\"/>");
        closeName(str);
        return true;
    }

    public void setWithComments(boolean z) {
        this.withComments = z;
    }

    public String tabs() {
        String str = TABS;
        return str.substring(0, Math.min(this.indent, str.length()));
    }

    public String trimHex(long j, int i) {
        String hexString = Long.toHexString(j);
        int length = hexString.length();
        return ZEROS.substring(0, Math.max(0, i - length)) + hexString.substring(Math.max(0, length - i), length);
    }

    public void write(GenericRecord genericRecord) {
        write("record", genericRecord);
    }

    public boolean writeChildren(GenericRecord genericRecord, boolean z) {
        List<? extends GenericRecord> genericChildren = genericRecord.getGenericChildren();
        if (genericChildren == null || genericChildren.isEmpty()) {
            return false;
        }
        if (!z) {
            this.f111592fw.print(">");
        }
        this.indent++;
        this.f111592fw.println();
        this.f111592fw.println(tabs() + "<children>");
        this.indent = this.indent + 1;
        int i = this.childIndex;
        this.childIndex = 0;
        genericChildren.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.r0h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                GenericRecordXmlWriter.this.lambda$writeChildren$0((GenericRecord) obj);
            }
        });
        this.childIndex = i;
        this.f111592fw.println();
        this.indent--;
        this.f111592fw.println(tabs() + "</children>");
        this.indent = this.indent - 1;
        return true;
    }

    public void writeError(String str) {
        printObject("error", str);
    }

    public Stream<Map.Entry<String, Supplier<?>>> writeProp(Map.Entry<String, Supplier<?>> entry) {
        final Object obj = entry.getValue().get();
        if (obj == null) {
            return Stream.empty();
        }
        boolean isComplex = isComplex(obj);
        if (this.attributePhase == isComplex) {
            return isComplex ? Stream.of(new AbstractMap.SimpleEntry(entry.getKey(), new Supplier() { // from class: com.sunia.HTREnginev2.q0h
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$writeProp$1;
                    lambda$writeProp$1 = GenericRecordXmlWriter.lambda$writeProp$1(obj);
                    return lambda$writeProp$1;
                }
            })) : Stream.empty();
        }
        int i = this.childIndex;
        this.childIndex = 0;
        writeValue(entry.getKey(), obj);
        this.childIndex = i;
        return Stream.empty();
    }

    public boolean writeProperties(GenericRecord genericRecord) {
        Map<String, Supplier<?>> genericProperties = genericRecord.getGenericProperties();
        if (genericProperties == null || genericProperties.isEmpty()) {
            return false;
        }
        int i = this.childIndex;
        this.childIndex = 0;
        List list = (List) genericProperties.entrySet().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.o0h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return GenericRecordXmlWriter.this.writeProp((Map.Entry) obj);
            }
        }).collect(Collectors.toList());
        this.attributePhase = false;
        if (!list.isEmpty()) {
            this.f111592fw.println(">");
            this.indent++;
            list.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.p0h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    GenericRecordXmlWriter.this.writeProp((Map.Entry) obj);
                }
            });
            this.indent--;
        }
        this.childIndex = i;
        return !list.isEmpty();
    }

    public void writeValue(final String str, final Object obj) {
        if (obj instanceof GenericRecord) {
            printGenericRecord(str, obj);
        } else if (obj != null) {
            if (str.endsWith(">")) {
                this.f111592fw.print("\t");
            }
            handler.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.b0h
                @Override // java.util.function.Predicate
                public final boolean test(Object obj2) {
                    boolean lambda$writeValue$2;
                    lambda$writeValue$2 = GenericRecordXmlWriter.lambda$writeValue$2(obj, (Map.Entry) obj2);
                    return lambda$writeValue$2;
                }
            }).findFirst().ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.m0h
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    GenericRecordXmlWriter.this.lambda$writeValue$3(str, obj, (Map.Entry) obj2);
                }
            });
        }
    }

    public static String marshal(GenericRecord genericRecord, boolean z) {
        StringBuilder sb = new StringBuilder();
        try {
            GenericRecordXmlWriter genericRecordXmlWriter = new GenericRecordXmlWriter(sb);
            try {
                genericRecordXmlWriter.setWithComments(z);
                genericRecordXmlWriter.write(genericRecord);
                String sb2 = sb.toString();
                genericRecordXmlWriter.close();
                return sb2;
            } finally {
            }
        } catch (IOException unused) {
            return "<record/>";
        }
    }

    public void write(String str, GenericRecord genericRecord) {
        String tabs = tabs();
        Enum<?> genericRecordType = genericRecord.getGenericRecordType();
        String name = genericRecordType != null ? genericRecordType.name() : genericRecord.getClass().getSimpleName();
        this.f111592fw.append((CharSequence) tabs);
        this.f111592fw.append((CharSequence) "<").append((CharSequence) str).append((CharSequence) " type=\"");
        this.f111592fw.append((CharSequence) name);
        this.f111592fw.append((CharSequence) "\"");
        if (this.childIndex > 0) {
            this.f111592fw.append((CharSequence) " index=\"");
            this.f111592fw.print(this.childIndex);
            this.f111592fw.append((CharSequence) "\"");
        }
        this.attributePhase = true;
        boolean writeProperties = writeProperties(genericRecord);
        this.attributePhase = false;
        if (writeChildren(genericRecord, writeProperties) | writeProperties) {
            this.f111592fw.append((CharSequence) tabs);
            this.f111592fw.println(XMLStreamWriterImpl.OPEN_END_TAG + str + ">");
            return;
        }
        this.f111592fw.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
    }

    public GenericRecordXmlWriter(Appendable appendable) {
        this.f111592fw = new PrintWriter(new GenericRecordJsonWriter.AppendableWriter(appendable));
    }
}
