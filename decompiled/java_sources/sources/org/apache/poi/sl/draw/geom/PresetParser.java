package org.apache.poi.sl.draw.geom;

import com.miui.penengine.p015e.C6999h;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes12.dex */
public class PresetParser {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) PresetParser.class);
    private CustomGeometry customGeometry;
    private final Map<String, CustomGeometry> geom;
    private Mode mode;
    private Path path;
    private boolean useAdjustValue;

    /* renamed from: org.apache.poi.sl.draw.geom.PresetParser$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196201 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode = iArr;
            try {
                iArr[Mode.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.SHAPE_LST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.SHAPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.CXN_LST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.AH_LST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.GUIDE_LST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.PATH_LST.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[Mode.PATH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum Mode {
        FILE(new Handler() { // from class: org.apache.poi.sl.draw.geom.i
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$700(presetParser, xMLStreamReader);
            }
        }),
        SHAPE_LST(new Handler() { // from class: org.apache.poi.sl.draw.geom.j
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$600(presetParser, xMLStreamReader);
            }
        }),
        SHAPE(new Handler() { // from class: org.apache.poi.sl.draw.geom.k
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$500(presetParser, xMLStreamReader);
            }
        }),
        GUIDE_LST(new Handler() { // from class: org.apache.poi.sl.draw.geom.l
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$400(presetParser, xMLStreamReader);
            }
        }),
        AH_LST(new Handler() { // from class: org.apache.poi.sl.draw.geom.m
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$300(presetParser, xMLStreamReader);
            }
        }),
        CXN_LST(new Handler() { // from class: org.apache.poi.sl.draw.geom.n
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$200(presetParser, xMLStreamReader);
            }
        }),
        PATH_LST(new Handler() { // from class: org.apache.poi.sl.draw.geom.o
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$100(presetParser, xMLStreamReader);
            }
        }),
        PATH(new Handler() { // from class: org.apache.poi.sl.draw.geom.p
            @Override // org.apache.poi.sl.draw.geom.PresetParser.Mode.Handler
            public final void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
                PresetParser.access$000(presetParser, xMLStreamReader);
            }
        });

        final Handler handler;

        /* loaded from: classes12.dex */
        public interface Handler {
            void update(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException;
        }

        Mode(Handler handler) {
            this.handler = handler;
        }
    }

    public PresetParser(Mode mode) {
        HashMap hashMap = new HashMap();
        this.geom = hashMap;
        this.mode = mode;
        if (mode == Mode.SHAPE) {
            CustomGeometry customGeometry = new CustomGeometry();
            this.customGeometry = customGeometry;
            hashMap.put("custom", customGeometry);
        }
    }

    public static /* synthetic */ void access$000(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException {
        presetParser.updatePath(xMLStreamReader);
    }

    public static /* synthetic */ void access$100(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
        presetParser.updatePathLst(xMLStreamReader);
    }

    public static /* synthetic */ void access$200(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException {
        presetParser.updateCxnList(xMLStreamReader);
    }

    public static /* synthetic */ void access$300(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException {
        presetParser.updateAhList(xMLStreamReader);
    }

    public static /* synthetic */ void access$400(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException {
        presetParser.updateGuideList(xMLStreamReader);
    }

    public static /* synthetic */ void access$500(PresetParser presetParser, XMLStreamReader xMLStreamReader) throws XMLStreamException {
        presetParser.updateShape(xMLStreamReader);
    }

    public static /* synthetic */ void access$600(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
        presetParser.updateShapeList(xMLStreamReader);
    }

    public static /* synthetic */ void access$700(PresetParser presetParser, XMLStreamReader xMLStreamReader) {
        presetParser.updateFile(xMLStreamReader);
    }

    private void addPolar(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        final PolarAdjustHandle polarAdjustHandle = new PolarAdjustHandle();
        this.customGeometry.addAdjustHandle(polarAdjustHandle);
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.f
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$addPolar$2(PolarAdjustHandle.this, (String) obj, (String) obj2);
            }
        });
        polarAdjustHandle.setPos(parsePosPoint(xMLStreamReader));
    }

    private void addRectangle(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        final String[] strArr = new String[4];
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.b
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$addRectangle$6(strArr, (String) obj, (String) obj2);
            }
        });
        this.customGeometry.setTextBounds(strArr[0], strArr[1], strArr[2], strArr[3]);
        nextTag(xMLStreamReader);
    }

    private void addXY(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        final XYAdjustHandle xYAdjustHandle = new XYAdjustHandle();
        this.customGeometry.addAdjustHandle(xYAdjustHandle);
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.h
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$addXY$1(XYAdjustHandle.this, (String) obj, (String) obj2);
            }
        });
        xYAdjustHandle.setPos(parsePosPoint(xMLStreamReader));
    }

    private void arcTo(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        final ArcToCommand arcToCommand = new ArcToCommand();
        this.path.addCommand(arcToCommand);
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.g
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$arcTo$5(ArcToCommand.this, (String) obj, (String) obj2);
            }
        });
        nextTag(xMLStreamReader);
    }

    private void closePath(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.path.addCommand(new ClosePathCommand());
        nextTag(xMLStreamReader);
    }

    private static String collapseString(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        while (i < length && !isWhiteSpace(str.charAt(i))) {
            i++;
        }
        if (i == length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        if (i != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(str.charAt(i2));
            }
            sb.append(' ');
        }
        boolean z = true;
        for (int i3 = i + 1; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            boolean isWhiteSpace = isWhiteSpace(charAt);
            if (!z || !isWhiteSpace) {
                if (isWhiteSpace) {
                    charAt = ' ';
                }
                sb.append(charAt);
                z = isWhiteSpace;
            }
        }
        int length2 = sb.length();
        if (length2 > 0) {
            int i4 = length2 - 1;
            if (sb.charAt(i4) == ' ') {
                sb.setLength(i4);
            }
        }
        return sb.toString();
    }

    private void cubicBezTo(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        CurveToCommand curveToCommand = new CurveToCommand();
        this.path.addCommand(curveToCommand);
        AdjustPoint parsePtPoint = parsePtPoint(xMLStreamReader, false);
        AdjustPoint parsePtPoint2 = parsePtPoint(xMLStreamReader, false);
        AdjustPoint parsePtPoint3 = parsePtPoint(xMLStreamReader, true);
        curveToCommand.setPt1(parsePtPoint);
        curveToCommand.setPt2(parsePtPoint2);
        curveToCommand.setPt3(parsePtPoint3);
    }

    private void endContext() {
        switch (C196201.$SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode[this.mode.ordinal()]) {
            case 1:
            case 2:
                this.mode = Mode.FILE;
                return;
            case 3:
                this.mode = Mode.SHAPE_LST;
                return;
            case 4:
            case 5:
            case 6:
            case 7:
                this.useAdjustValue = false;
                this.path = null;
                this.mode = Mode.SHAPE;
                return;
            case 8:
                this.path = null;
                this.mode = Mode.PATH_LST;
                return;
            default:
                return;
        }
    }

    private static boolean isWhiteSpace(char c) {
        return c == '\t' || c == '\n' || c == '\r' || c == ' ';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addPolar$2(PolarAdjustHandle polarAdjustHandle, String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1251269476:
                if (str.equals("gdRefR")) {
                    c = 0;
                    break;
                }
                break;
            case -1081167402:
                if (str.equals("maxAng")) {
                    c = 1;
                    break;
                }
                break;
            case -1074077144:
                if (str.equals("minAng")) {
                    c = 2;
                    break;
                }
                break;
            case 3344238:
                if (str.equals("maxR")) {
                    c = 3;
                    break;
                }
                break;
            case 3351616:
                if (str.equals("minR")) {
                    c = 4;
                    break;
                }
                break;
            case 120863620:
                if (str.equals("gdRefAng")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                polarAdjustHandle.setGdRefR(collapseString(str2));
                return;
            case 1:
                polarAdjustHandle.setMaxAng(str2);
                return;
            case 2:
                polarAdjustHandle.setMinAng(str2);
                return;
            case 3:
                polarAdjustHandle.setMaxR(str2);
                return;
            case 4:
                polarAdjustHandle.setMinR(str2);
                return;
            case 5:
                polarAdjustHandle.setGdRefAng(collapseString(str2));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addRectangle$6(String[] strArr, String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    c = 0;
                    break;
                }
                break;
            case 108:
                if (str.equals("l")) {
                    c = 1;
                    break;
                }
                break;
            case 114:
                if (str.equals("r")) {
                    c = 2;
                    break;
                }
                break;
            case 116:
                if (str.equals("t")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                strArr[3] = str2;
                return;
            case 1:
                strArr[0] = str2;
                return;
            case 2:
                strArr[2] = str2;
                return;
            case 3:
                strArr[1] = str2;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addXY$1(XYAdjustHandle xYAdjustHandle, String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1251269470:
                if (str.equals("gdRefX")) {
                    c = 0;
                    break;
                }
                break;
            case -1251269469:
                if (str.equals("gdRefY")) {
                    c = 1;
                    break;
                }
                break;
            case 3344244:
                if (str.equals("maxX")) {
                    c = 2;
                    break;
                }
                break;
            case 3344245:
                if (str.equals("maxY")) {
                    c = 3;
                    break;
                }
                break;
            case 3351622:
                if (str.equals("minX")) {
                    c = 4;
                    break;
                }
                break;
            case 3351623:
                if (str.equals("minY")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                xYAdjustHandle.setGdRefX(collapseString(str2));
                return;
            case 1:
                xYAdjustHandle.setGdRefY(collapseString(str2));
                return;
            case 2:
                xYAdjustHandle.setMaxX(str2);
                return;
            case 3:
                xYAdjustHandle.setMaxY(str2);
                return;
            case 4:
                xYAdjustHandle.setMinX(str2);
                return;
            case 5:
                xYAdjustHandle.setMinY(str2);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arcTo$5(ArcToCommand arcToCommand, String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3306:
                if (str.equals("hR")) {
                    c = 0;
                    break;
                }
                break;
            case 3771:
                if (str.equals("wR")) {
                    c = 1;
                    break;
                }
                break;
            case 109726649:
                if (str.equals("stAng")) {
                    c = 2;
                    break;
                }
                break;
            case 109816022:
                if (str.equals("swAng")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                arcToCommand.setHR(str2);
                return;
            case 1:
                arcToCommand.setWR(str2);
                return;
            case 2:
                arcToCommand.setStAng(str2);
                return;
            case 3:
                arcToCommand.setSwAng(str2);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$parseAdjPoint$7(AdjustPoint adjustPoint, String str, String str2) {
        str.hashCode();
        if (str.equals("x")) {
            adjustPoint.setX(str2);
        } else if (str.equals("y")) {
            adjustPoint.setY(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateCxnList$3(ConnectionSite connectionSite, String str, String str2) {
        if ("ang".equals(str)) {
            connectionSite.setAng(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateGuideList$0(Guide guide, String str, String str2) {
        str.hashCode();
        if (str.equals("fmla")) {
            guide.setFmla(str2);
        } else if (str.equals("name")) {
            guide.setName(collapseString(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePathLst$4(String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1453197163:
                if (str.equals("extrusionOk")) {
                    c = 0;
                    break;
                }
                break;
            case -891980232:
                if (str.equals("stroke")) {
                    c = 1;
                    break;
                }
                break;
            case 104:
                if (str.equals(C6999h.f39688c)) {
                    c = 2;
                    break;
                }
                break;
            case 119:
                if (str.equals("w")) {
                    c = 3;
                    break;
                }
                break;
            case 3143043:
                if (str.equals("fill")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.path.setExtrusionOk(Boolean.parseBoolean(str2));
                return;
            case 1:
                this.path.setStroke(Boolean.parseBoolean(str2));
                return;
            case 2:
                this.path.setH(Long.parseLong(str2));
                return;
            case 3:
                this.path.setW(Long.parseLong(str2));
                return;
            case 4:
                this.path.setFill(mapFill(str2));
                return;
            default:
                return;
        }
    }

    private void lineTo(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        LineToCommand lineToCommand = new LineToCommand();
        this.path.addCommand(lineToCommand);
        lineToCommand.setPt(parsePtPoint(xMLStreamReader, true));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static PaintStyle.PaintModifier mapFill(String str) {
        char c;
        switch (str.hashCode()) {
            case -2005126536:
                if (str.equals("lightenLess")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1414880040:
                if (str.equals("darkenLess")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1338968417:
                if (str.equals("darken")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3387324:
                if (str.equals("norm")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 170546239:
                if (str.equals("lighten")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 2 ? c != 3 ? c != 4 ? c != 5 ? c != 6 ? PaintStyle.PaintModifier.NONE : PaintStyle.PaintModifier.DARKEN_LESS : PaintStyle.PaintModifier.DARKEN : PaintStyle.PaintModifier.LIGHTEN_LESS : PaintStyle.PaintModifier.LIGHTEN : PaintStyle.PaintModifier.NORM;
    }

    private void moveTo(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        MoveToCommand moveToCommand = new MoveToCommand();
        this.path.addCommand(moveToCommand);
        moveToCommand.setPt(parsePtPoint(xMLStreamReader, true));
    }

    private static int nextTag(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        int next;
        do {
            next = xMLStreamReader.next();
            if (next == 1 || next == 2) {
                break;
            }
        } while (next != 8);
        return next;
    }

    private AdjustPoint parseAdjPoint(XMLStreamReader xMLStreamReader, boolean z, String str) throws XMLStreamException {
        if (nextTag(xMLStreamReader) == 2) {
            return null;
        }
        final AdjustPoint adjustPoint = new AdjustPoint();
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$parseAdjPoint$7(AdjustPoint.this, (String) obj, (String) obj2);
            }
        });
        nextTag(xMLStreamReader);
        if (z) {
            nextTag(xMLStreamReader);
        }
        return adjustPoint;
    }

    private void parseAttributes(XMLStreamReader xMLStreamReader, BiConsumer<String, String> biConsumer) {
        for (int i = 0; i < xMLStreamReader.getAttributeCount(); i++) {
            biConsumer.accept(xMLStreamReader.getAttributeLocalName(i), xMLStreamReader.getAttributeValue(i));
        }
    }

    private AdjustPoint parsePosPoint(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        return parseAdjPoint(xMLStreamReader, true, "pos");
    }

    private AdjustPoint parsePtPoint(XMLStreamReader xMLStreamReader, boolean z) throws XMLStreamException {
        return parseAdjPoint(xMLStreamReader, z, ExtUnits.UNIT_PT);
    }

    private void quadBezTo(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        QuadToCommand quadToCommand = new QuadToCommand();
        this.path.addCommand(quadToCommand);
        AdjustPoint parsePtPoint = parsePtPoint(xMLStreamReader, false);
        AdjustPoint parsePtPoint2 = parsePtPoint(xMLStreamReader, true);
        quadToCommand.setPt1(parsePtPoint);
        quadToCommand.setPt2(parsePtPoint2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAhList(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String localName = xMLStreamReader.getLocalName();
        localName.hashCode();
        if (localName.equals("ahPolar")) {
            addPolar(xMLStreamReader);
        } else if (localName.equals("ahXY")) {
            addXY(xMLStreamReader);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCxnList(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        xMLStreamReader.getLocalName();
        final ConnectionSite connectionSite = new ConnectionSite();
        this.customGeometry.addConnectionSite(connectionSite);
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.a
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$updateCxnList$3(ConnectionSite.this, (String) obj, (String) obj2);
            }
        });
        connectionSite.setPos(parsePosPoint(xMLStreamReader));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFile(XMLStreamReader xMLStreamReader) {
        xMLStreamReader.getLocalName();
        this.mode = Mode.SHAPE_LST;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGuideList(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        final Guide guide;
        xMLStreamReader.getLocalName();
        if (this.useAdjustValue) {
            CustomGeometry customGeometry = this.customGeometry;
            AdjustValue adjustValue = new AdjustValue();
            customGeometry.addAdjustGuide(adjustValue);
            guide = adjustValue;
        } else {
            CustomGeometry customGeometry2 = this.customGeometry;
            Guide guide2 = new Guide();
            customGeometry2.addGeomGuide(guide2);
            guide = guide2;
        }
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.d
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.lambda$updateGuideList$0(Guide.this, (String) obj, (String) obj2);
            }
        });
        nextTag(xMLStreamReader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePath(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String localName = xMLStreamReader.getLocalName();
        localName.hashCode();
        char c = 65535;
        switch (localName.hashCode()) {
            case -1513004949:
                if (localName.equals("quadBezTo")) {
                    c = 0;
                    break;
                }
                break;
            case -1068263892:
                if (localName.equals("moveTo")) {
                    c = 1;
                    break;
                }
                break;
            case 3325853:
                if (localName.equals("lnTo")) {
                    c = 2;
                    break;
                }
                break;
            case 93075565:
                if (localName.equals("arcTo")) {
                    c = 3;
                    break;
                }
                break;
            case 94756344:
                if (localName.equals("close")) {
                    c = 4;
                    break;
                }
                break;
            case 1594918984:
                if (localName.equals("cubicBezTo")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                quadBezTo(xMLStreamReader);
                return;
            case 1:
                moveTo(xMLStreamReader);
                return;
            case 2:
                lineTo(xMLStreamReader);
                return;
            case 3:
                arcTo(xMLStreamReader);
                return;
            case 4:
                closePath(xMLStreamReader);
                return;
            case 5:
                cubicBezTo(xMLStreamReader);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePathLst(XMLStreamReader xMLStreamReader) {
        xMLStreamReader.getLocalName();
        Path path = new Path();
        this.path = path;
        this.customGeometry.addPath(path);
        parseAttributes(xMLStreamReader, new BiConsumer() { // from class: org.apache.poi.sl.draw.geom.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PresetParser.this.lambda$updatePathLst$4((String) obj, (String) obj2);
            }
        });
        this.mode = Mode.PATH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShape(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String localName = xMLStreamReader.getLocalName();
        localName.hashCode();
        char c = 65535;
        switch (localName.hashCode()) {
            case -1346505100:
                if (localName.equals("cxnLst")) {
                    c = 0;
                    break;
                }
                break;
            case -791471768:
                if (localName.equals("pathLst")) {
                    c = 1;
                    break;
                }
                break;
            case 3496420:
                if (localName.equals("rect")) {
                    c = 2;
                    break;
                }
                break;
            case 92756518:
                if (localName.equals("ahLst")) {
                    c = 3;
                    break;
                }
                break;
            case 93173592:
                if (localName.equals("avLst")) {
                    c = 4;
                    break;
                }
                break;
            case 98178480:
                if (localName.equals("gdLst")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.mode = Mode.CXN_LST;
                return;
            case 1:
                this.mode = Mode.PATH_LST;
                return;
            case 2:
                addRectangle(xMLStreamReader);
                return;
            case 3:
                this.mode = Mode.AH_LST;
                return;
            case 4:
                this.useAdjustValue = true;
                this.mode = Mode.GUIDE_LST;
                return;
            case 5:
                this.useAdjustValue = false;
                this.mode = Mode.GUIDE_LST;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShapeList(XMLStreamReader xMLStreamReader) {
        String localName = xMLStreamReader.getLocalName();
        this.customGeometry = new CustomGeometry();
        if (this.geom.containsKey(localName)) {
            LOG.atWarn().log("Duplicate definition of {}", localName);
        }
        this.geom.put(localName, this.customGeometry);
        this.mode = Mode.SHAPE;
    }

    public Map<String, CustomGeometry> getGeom() {
        return this.geom;
    }

    public void parse(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        while (xMLStreamReader.hasNext()) {
            int next = xMLStreamReader.next();
            if (next == 1) {
                this.mode.handler.update(this, xMLStreamReader);
            } else if (next == 2) {
                endContext();
            } else if (next == 8) {
                return;
            }
        }
    }
}
