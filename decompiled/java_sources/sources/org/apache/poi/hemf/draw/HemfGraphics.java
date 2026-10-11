package org.apache.poi.hemf.draw;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Graphics2D;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfComment;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusRecord;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfObjectTableEntry;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class HemfGraphics extends HwmfGraphics {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Map<Integer, HwmfObjectTableEntry> plusObjectTable;
    private final Map<Integer, HemfDrawProperties> plusPropStack;
    private EmfRenderState renderState;
    private static final HwmfColorRef WHITE = new HwmfColorRef(Color.WHITE);
    private static final HwmfColorRef LTGRAY = new HwmfColorRef(new Color(12632256));
    private static final HwmfColorRef GRAY = new HwmfColorRef(new Color(8421504));
    private static final HwmfColorRef DKGRAY = new HwmfColorRef(new Color(4210752));
    private static final HwmfColorRef BLACK = new HwmfColorRef(Color.BLACK);

    /* renamed from: org.apache.poi.hemf.draw.HemfGraphics$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194441 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle;

        static {
            int[] iArr = new int[HwmfGraphics.FillDrawStyle.values().length];
            $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle = iArr;
            try {
                iArr[HwmfGraphics.FillDrawStyle.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[HwmfGraphics.FillDrawStyle.DRAW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[HwmfGraphics.FillDrawStyle.FILL_DRAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[EmfRenderState.values().length];
            $SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState = iArr2;
            try {
                iArr2[EmfRenderState.EMF_DCONTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState[EmfRenderState.INITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState[EmfRenderState.EMF_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState[EmfRenderState.EMFPLUS_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfRenderState {
        INITIAL,
        EMF_ONLY,
        EMFPLUS_ONLY,
        EMF_DCONTEXT
    }

    public HemfGraphics(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        super(graphics2D, rectangle2D);
        this.renderState = EmfRenderState.INITIAL;
        this.plusObjectTable = new HashMap();
        this.plusPropStack = new HashMap();
        this.objectIndexes.set(0);
        getProperties().setBkMode(HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Color[] lambda$getLinearGradient$1(int i) {
        return new Color[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toArray$2(float[] fArr, int[] iArr, Number number) {
        int i = iArr[0];
        iArr[0] = i + 1;
        fArr[i] = number.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$updateWindowMapMode$0(AffineTransform affineTransform, Iterator it2, HemfDrawProperties.TransOperand transOperand) {
        transOperand.fun.accept(affineTransform, it2.next());
    }

    private void selectStockObject(int i) {
        HemfDrawProperties properties = getProperties();
        switch (i) {
            case Integer.MIN_VALUE:
                properties.setBrushColor(WHITE);
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                return;
            case -2147483647:
                properties.setBrushColor(LTGRAY);
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                return;
            case -2147483646:
                properties.setBrushColor(GRAY);
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                return;
            case PropertyIDMap.PID_BEHAVIOUR /* -2147483645 */:
                properties.setBrushColor(DKGRAY);
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                return;
            case -2147483644:
                properties.setBrushColor(BLACK);
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                return;
            case -2147483643:
                properties.setBrushStyle(HwmfBrushStyle.BS_NULL);
                return;
            case -2147483642:
                properties.setPenStyle(HwmfPenStyle.valueOf(0));
                properties.setPenWidth(1.0d);
                properties.setPenColor(WHITE);
                return;
            case -2147483641:
                properties.setPenStyle(HwmfPenStyle.valueOf(0));
                properties.setPenWidth(1.0d);
                properties.setPenColor(BLACK);
                return;
            case -2147483640:
                properties.setPenStyle(HwmfPenStyle.valueOf(HwmfPenStyle.HwmfLineDash.NULL.wmfFlag));
                return;
            default:
                return;
        }
    }

    private static float[] toArray(Stream<? extends Number> stream, int i) {
        final float[] fArr = new float[i];
        final int[] iArr = {0};
        stream.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.tjh
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HemfGraphics.lambda$toArray$2(fArr, iArr, (Number) obj);
            }
        });
        return fArr;
    }

    public void addObjectTableEntry(HwmfObjectTableEntry hwmfObjectTableEntry, int i) {
        if (i >= 1) {
            this.objectIndexes.set(i);
            this.objectTable.put(Integer.valueOf(i), hwmfObjectTableEntry);
        } else {
            throw new IndexOutOfBoundsException("Object table entry index in EMF must be > 0 - invalid index: " + i);
        }
    }

    public void addPlusObjectTableEntry(HwmfObjectTableEntry hwmfObjectTableEntry, int i) {
        if (i >= 0 && i <= 63) {
            this.plusObjectTable.put(Integer.valueOf(i), hwmfObjectTableEntry);
            return;
        }
        throw new IndexOutOfBoundsException("Object table entry index in EMF+ must be [0..63] - invalid index: " + i);
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public void applyObjectTableEntry(int i) {
        if ((Integer.MIN_VALUE & i) != 0) {
            selectStockObject(i);
            return;
        }
        HwmfObjectTableEntry hwmfObjectTableEntry = this.objectTable.get(Integer.valueOf(i));
        if (hwmfObjectTableEntry != null) {
            hwmfObjectTableEntry.applyObject(this);
            return;
        }
        throw new NoSuchElementException("EMF reference exception - object table entry on index " + i + " was deleted before.");
    }

    public void applyPlusObjectTableEntry(int i) {
        if ((Integer.MIN_VALUE & i) != 0) {
            selectStockObject(i);
            return;
        }
        HwmfObjectTableEntry hwmfObjectTableEntry = this.plusObjectTable.get(Integer.valueOf(i));
        if (hwmfObjectTableEntry != null) {
            hwmfObjectTableEntry.applyObject(this);
            return;
        }
        throw new NoSuchElementException("EMF+ reference exception - plus object table entry on index " + i + " was deleted before.");
    }

    public void draw(HemfRecord hemfRecord) {
        int i = C194441.$SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState[getRenderState().ordinal()];
        if (i == 3) {
            if (hemfRecord instanceof HemfComment.EmfComment) {
                return;
            }
            hemfRecord.draw(this);
        } else if (i != 4) {
            hemfRecord.draw(this);
        } else if (hemfRecord instanceof HemfComment.EmfComment) {
            hemfRecord.draw(this);
        }
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public void fill(Shape shape) {
        if (getProperties().getBrushStyle() == HwmfBrushStyle.BS_NULL) {
            return;
        }
        Composite composite = this.graphicsCtx.getComposite();
        this.graphicsCtx.setComposite(AlphaComposite.getInstance(3));
        this.graphicsCtx.setPaint(getFill());
        this.graphicsCtx.fill(shape);
        this.graphicsCtx.setComposite(composite);
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public Paint getHatchedFill() {
        return super.getHatchedFill();
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public Paint getLinearGradient() {
        HemfDrawProperties properties = getProperties();
        Rectangle2D brushRect = properties.getBrushRect();
        List<? extends Map.Entry<Float, Color>> brushColorsH = properties.getBrushColorsH();
        return new LinearGradientPaint(new Point2D.Double(brushRect.getMinX(), brushRect.getCenterY()), new Point2D.Double(brushRect.getMaxX(), brushRect.getCenterY()), toArray(brushColorsH.stream().map(new Function() { // from class: com.sunia.HTREnginev2.ujh
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Float) ((Map.Entry) obj).getKey();
            }
        }), brushColorsH.size()), (Color[]) brushColorsH.stream().map(new Function() { // from class: com.sunia.HTREnginev2.vjh
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Color) ((Map.Entry) obj).getValue();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.wjh
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Color[] lambda$getLinearGradient$1;
                lambda$getLinearGradient$1 = HemfGraphics.lambda$getLinearGradient$1(i);
                return lambda$getLinearGradient$1;
            }
        }), MultipleGradientPaint.CycleMethod.NO_CYCLE, MultipleGradientPaint.ColorSpaceType.SRGB, properties.getBrushTransform());
    }

    public HwmfObjectTableEntry getObjectTableEntry(int i) {
        if (i >= 1) {
            return this.objectTable.get(Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException("Object table entry index in EMF must be > 0 - invalid index: " + i);
    }

    public HwmfObjectTableEntry getPlusObjectTableEntry(int i) {
        if (i >= 0 && i <= 63) {
            return this.plusObjectTable.get(Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException("Object table entry index in EMF+ must be [0..63] - invalid index: " + i);
    }

    public EmfRenderState getRenderState() {
        return this.renderState;
    }

    public void restorePlusProperties(int i) {
        if (this.plusPropStack.containsKey(Integer.valueOf(i))) {
            HemfDrawProperties hemfDrawProperties = new HemfDrawProperties(this.plusPropStack.get(Integer.valueOf(i)));
            this.prop = hemfDrawProperties;
            this.graphicsCtx.setTransform(hemfDrawProperties.getTransform());
            this.graphicsCtx.setClip(this.prop.getClip());
        }
    }

    public void savePlusProperties(int i) {
        HemfDrawProperties properties = getProperties();
        properties.setTransform(this.graphicsCtx.getTransform());
        properties.setClip(this.graphicsCtx.getClip());
        this.plusPropStack.put(Integer.valueOf(i), properties);
        this.prop = newProperties((HwmfDrawProperties) properties);
    }

    public void setRenderState(EmfRenderState emfRenderState) {
        this.renderState = emfRenderState;
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public void updateWindowMapMode() {
        super.updateWindowMapMode();
        HemfDrawProperties properties = getProperties();
        List<AffineTransform> transXForm = properties.getTransXForm();
        List<HemfDrawProperties.TransOperand> transOper = properties.getTransOper();
        final AffineTransform transform = this.graphicsCtx.getTransform();
        final Iterator<AffineTransform> it2 = transXForm.iterator();
        transOper.forEach(new Consumer() { // from class: org.apache.poi.hemf.draw.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HemfGraphics.lambda$updateWindowMapMode$0(AffineTransform.this, it2, (HemfDrawProperties.TransOperand) obj);
            }
        });
        this.graphicsCtx.setTransform(transform);
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public HemfDrawProperties getProperties() {
        return (HemfDrawProperties) super.getProperties();
    }

    @Override // org.apache.poi.hwmf.draw.HwmfGraphics
    public HemfDrawProperties newProperties(HwmfDrawProperties hwmfDrawProperties) {
        return hwmfDrawProperties == null ? new HemfDrawProperties() : new HemfDrawProperties((HemfDrawProperties) hwmfDrawProperties);
    }

    public void draw(HemfPlusRecord hemfPlusRecord) {
        hemfPlusRecord.draw(this);
    }

    @Internal
    public void draw(Consumer<Path2D> consumer, HwmfGraphics.FillDrawStyle fillDrawStyle) {
        Path2D path2D;
        HemfDrawProperties properties = getProperties();
        boolean usePathBracket = properties.getUsePathBracket();
        if (usePathBracket) {
            path2D = properties.getPath();
        } else {
            path2D = new Path2D.Double();
            path2D.setWindingRule(properties.getWindingRule());
        }
        if (path2D.getCurrentPoint() == null) {
            Point2D location = properties.getLocation();
            path2D.moveTo(location.getX(), location.getY());
        }
        try {
            consumer.accept(path2D);
        } catch (Exception unused) {
            Point2D location2 = properties.getLocation();
            path2D.moveTo(location2.getX(), location2.getY());
            consumer.accept(path2D);
        }
        Point2D currentPoint = path2D.getCurrentPoint();
        if (currentPoint == null) {
            return;
        }
        properties.setLocation(currentPoint);
        if (usePathBracket) {
            return;
        }
        int i = C194441.$SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[fillDrawStyle.ordinal()];
        if (i == 1) {
            super.fill(path2D);
            return;
        }
        if (i == 2) {
            super.draw(path2D);
        } else {
            if (i != 3) {
                return;
            }
            super.fill(path2D);
            super.draw(path2D);
        }
    }
}
