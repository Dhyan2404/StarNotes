package sun.java2d;

import java.awt.AWTPermission;
import java.awt.Color;
import java.awt.GraphicsConfiguration;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.Transparency;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.security.Permission;
import sun.awt.image.SurfaceManager;
import sun.java2d.StateTrackable;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.DrawGlyphList;
import sun.java2d.loops.DrawGlyphListAA;
import sun.java2d.loops.DrawGlyphListLCD;
import sun.java2d.loops.DrawLine;
import sun.java2d.loops.DrawParallelogram;
import sun.java2d.loops.DrawPath;
import sun.java2d.loops.DrawPolygons;
import sun.java2d.loops.DrawRect;
import sun.java2d.loops.FillParallelogram;
import sun.java2d.loops.FillPath;
import sun.java2d.loops.FillRect;
import sun.java2d.loops.FillSpans;
import sun.java2d.loops.MaskFill;
import sun.java2d.loops.RenderCache;
import sun.java2d.loops.RenderLoops;
import sun.java2d.loops.SurfaceType;
import sun.java2d.pipe.AAShapePipe;
import sun.java2d.pipe.AATextRenderer;
import sun.java2d.pipe.AlphaColorPipe;
import sun.java2d.pipe.AlphaPaintPipe;
import sun.java2d.pipe.CompositePipe;
import sun.java2d.pipe.DrawImage;
import sun.java2d.pipe.DrawImagePipe;
import sun.java2d.pipe.GeneralCompositePipe;
import sun.java2d.pipe.LCDTextRenderer;
import sun.java2d.pipe.LoopBasedPipe;
import sun.java2d.pipe.LoopPipe;
import sun.java2d.pipe.OutlineTextRenderer;
import sun.java2d.pipe.ParallelogramPipe;
import sun.java2d.pipe.PixelToParallelogramConverter;
import sun.java2d.pipe.PixelToShapeConverter;
import sun.java2d.pipe.ShapeDrawPipe;
import sun.java2d.pipe.SolidTextRenderer;
import sun.java2d.pipe.SpanClipRenderer;
import sun.java2d.pipe.SpanShapeRenderer;
import sun.java2d.pipe.TextPipe;
import sun.java2d.pipe.TextRenderer;

/* loaded from: classes16.dex */
public abstract class SurfaceData implements Transparency, DisposerTarget, StateTrackable, Surface {
    protected static final AAShapePipe AAClipColorShape;
    protected static final PixelToParallelogramConverter AAClipColorViaShape;
    protected static final AAShapePipe AAClipCompShape;
    protected static final PixelToParallelogramConverter AAClipCompViaShape;
    protected static final AAShapePipe AAClipPaintShape;
    protected static final PixelToParallelogramConverter AAClipPaintViaShape;
    protected static final AAShapePipe AAColorShape;
    protected static final PixelToParallelogramConverter AAColorViaPgram;
    protected static final PixelToParallelogramConverter AAColorViaShape;
    protected static final AAShapePipe AACompShape;
    protected static final PixelToParallelogramConverter AACompViaShape;
    protected static final AAShapePipe AAPaintShape;
    protected static final PixelToParallelogramConverter AAPaintViaShape;
    static final int LOOP_FOUND = 1;
    static final int LOOP_NOTFOUND = 2;
    static final int LOOP_UNKNOWN = 0;
    public static final TextPipe aaTextRenderer;
    protected static final CompositePipe clipColorPipe;
    protected static final TextPipe clipColorText;
    protected static final CompositePipe clipCompPipe;
    protected static final TextPipe clipCompText;
    protected static final CompositePipe clipPaintPipe;
    protected static final TextPipe clipPaintText;
    protected static final AlphaColorPipe colorPipe;
    protected static final LoopPipe colorPrimitives;
    protected static final TextPipe colorText;
    protected static final PixelToParallelogramConverter colorViaPgram;
    protected static final PixelToShapeConverter colorViaShape;
    static Permission compPermission;
    protected static final CompositePipe compPipe;
    protected static final SpanShapeRenderer compShape;
    protected static final TextPipe compText;
    protected static final PixelToShapeConverter compViaShape;
    protected static final DrawImagePipe imagepipe;
    public static final TextPipe lcdTextRenderer;
    private static RenderCache loopcache;
    public static final TextPipe outlineTextRenderer;
    protected static final CompositePipe paintPipe;
    protected static final SpanShapeRenderer paintShape;
    protected static final TextPipe paintText;
    protected static final PixelToShapeConverter paintViaShape;
    public static final TextPipe solidTextRenderer;
    private Object blitProxyKey;
    private ColorModel colorModel;
    private Object disposerReferent;
    int haveLCDLoop;
    int havePgramSolidLoop;
    int havePgramXORLoop;
    private long pData;
    private StateTrackableDelegate stateDelegate;
    private boolean surfaceLost;
    private SurfaceType surfaceType;
    private boolean valid;

    /* loaded from: classes16.dex */
    public static class PixelToPgramLoopConverter extends PixelToParallelogramConverter implements LoopBasedPipe {
        public PixelToPgramLoopConverter(ShapeDrawPipe shapeDrawPipe, ParallelogramPipe parallelogramPipe, double d, double d2, boolean z) {
            super(shapeDrawPipe, parallelogramPipe, d, d2, z);
        }
    }

    /* loaded from: classes16.dex */
    public static class PixelToShapeLoopConverter extends PixelToShapeConverter implements LoopBasedPipe {
        public PixelToShapeLoopConverter(ShapeDrawPipe shapeDrawPipe) {
            super(shapeDrawPipe);
        }
    }

    static {
        initIDs();
        LoopPipe loopPipe = new LoopPipe();
        colorPrimitives = loopPipe;
        outlineTextRenderer = new OutlineTextRenderer();
        solidTextRenderer = new SolidTextRenderer();
        aaTextRenderer = new AATextRenderer();
        lcdTextRenderer = new LCDTextRenderer();
        AlphaColorPipe alphaColorPipe = new AlphaColorPipe();
        colorPipe = alphaColorPipe;
        colorViaShape = new PixelToShapeLoopConverter(loopPipe);
        colorViaPgram = new PixelToPgramLoopConverter(loopPipe, loopPipe, 1.0d, 0.25d, true);
        colorText = new TextRenderer(alphaColorPipe);
        SpanClipRenderer spanClipRenderer = new SpanClipRenderer(alphaColorPipe);
        clipColorPipe = spanClipRenderer;
        clipColorText = new TextRenderer(spanClipRenderer);
        AAShapePipe aAShapePipe = new AAShapePipe(alphaColorPipe);
        AAColorShape = aAShapePipe;
        AAColorViaShape = makeConverter(aAShapePipe);
        AAColorViaPgram = makeConverter(aAShapePipe, alphaColorPipe);
        AAShapePipe aAShapePipe2 = new AAShapePipe(spanClipRenderer);
        AAClipColorShape = aAShapePipe2;
        AAClipColorViaShape = makeConverter(aAShapePipe2);
        AlphaPaintPipe alphaPaintPipe = new AlphaPaintPipe();
        paintPipe = alphaPaintPipe;
        SpanShapeRenderer.Composite composite = new SpanShapeRenderer.Composite(alphaPaintPipe);
        paintShape = composite;
        paintViaShape = new PixelToShapeConverter(composite);
        paintText = new TextRenderer(alphaPaintPipe);
        SpanClipRenderer spanClipRenderer2 = new SpanClipRenderer(alphaPaintPipe);
        clipPaintPipe = spanClipRenderer2;
        clipPaintText = new TextRenderer(spanClipRenderer2);
        AAShapePipe aAShapePipe3 = new AAShapePipe(alphaPaintPipe);
        AAPaintShape = aAShapePipe3;
        AAPaintViaShape = makeConverter(aAShapePipe3);
        AAShapePipe aAShapePipe4 = new AAShapePipe(spanClipRenderer2);
        AAClipPaintShape = aAShapePipe4;
        AAClipPaintViaShape = makeConverter(aAShapePipe4);
        GeneralCompositePipe generalCompositePipe = new GeneralCompositePipe();
        compPipe = generalCompositePipe;
        SpanShapeRenderer.Composite composite2 = new SpanShapeRenderer.Composite(generalCompositePipe);
        compShape = composite2;
        compViaShape = new PixelToShapeConverter(composite2);
        compText = new TextRenderer(generalCompositePipe);
        SpanClipRenderer spanClipRenderer3 = new SpanClipRenderer(generalCompositePipe);
        clipCompPipe = spanClipRenderer3;
        clipCompText = new TextRenderer(spanClipRenderer3);
        AAShapePipe aAShapePipe5 = new AAShapePipe(generalCompositePipe);
        AACompShape = aAShapePipe5;
        AACompViaShape = makeConverter(aAShapePipe5);
        AAShapePipe aAShapePipe6 = new AAShapePipe(spanClipRenderer3);
        AAClipCompShape = aAShapePipe6;
        AAClipCompViaShape = makeConverter(aAShapePipe6);
        imagepipe = new DrawImage();
        loopcache = new RenderCache(30);
    }

    public SurfaceData(SurfaceType surfaceType, ColorModel colorModel) {
        this(StateTrackable.State.STABLE, surfaceType, colorModel);
    }

    private static CompositeType getFillCompositeType(SunGraphics2D sunGraphics2D) {
        CompositeType compositeType = sunGraphics2D.imageComp;
        return sunGraphics2D.compositeState == 0 ? compositeType == CompositeType.SrcOverNoEa ? CompositeType.OpaqueSrcOverNoEa : CompositeType.SrcNoEa : compositeType;
    }

    private static SurfaceType getPaintSurfaceType(SunGraphics2D sunGraphics2D) {
        int i = sunGraphics2D.paintState;
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? SurfaceType.AnyPaint : sunGraphics2D.paint.getTransparency() == 1 ? SurfaceType.OpaqueTexturePaint : SurfaceType.TexturePaint : sunGraphics2D.paint.getTransparency() == 1 ? SurfaceType.OpaqueRadialGradientPaint : SurfaceType.RadialGradientPaint : sunGraphics2D.paint.getTransparency() == 1 ? SurfaceType.OpaqueLinearGradientPaint : SurfaceType.LinearGradientPaint : sunGraphics2D.paint.getTransparency() == 1 ? SurfaceType.OpaqueGradientPaint : SurfaceType.GradientPaint : SurfaceType.AnyColor : SurfaceType.OpaqueColor;
    }

    public static SurfaceData getPrimarySurfaceData(Image image) {
        return SurfaceManager.getManager(image).getPrimarySurfaceData();
    }

    private TextPipe getTextPipe(SunGraphics2D sunGraphics2D, boolean z) {
        int i = sunGraphics2D.textAntialiasHint;
        if (i == 0) {
            return z ? aaTextRenderer : solidTextRenderer;
        }
        if (i == 1) {
            return solidTextRenderer;
        }
        if (i == 2) {
            return aaTextRenderer;
        }
        int i2 = sunGraphics2D.getFontInfo().aaHint;
        return i2 != 1 ? i2 != 2 ? (i2 == 4 || i2 == 6) ? lcdTextRenderer : z ? aaTextRenderer : solidTextRenderer : aaTextRenderer : solidTextRenderer;
    }

    private static void initIDs() {
    }

    public static boolean isNull(SurfaceData surfaceData) {
        return surfaceData == null || surfaceData == NullSurfaceData.theInstance;
    }

    public static boolean isOpaqueGray(IndexColorModel indexColorModel) {
        return false;
    }

    private static PixelToParallelogramConverter makeConverter(AAShapePipe aAShapePipe, ParallelogramPipe parallelogramPipe) {
        return new PixelToParallelogramConverter(aAShapePipe, parallelogramPipe, 0.125d, 0.499d, false);
    }

    public static RenderLoops makeRenderLoops(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        RenderLoops renderLoops = new RenderLoops();
        renderLoops.drawLineLoop = DrawLine.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.fillRectLoop = FillRect.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawRectLoop = DrawRect.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawPolygonsLoop = DrawPolygons.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawPathLoop = DrawPath.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.fillPathLoop = FillPath.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.fillSpansLoop = FillSpans.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.fillParallelogramLoop = FillParallelogram.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawParallelogramLoop = DrawParallelogram.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawGlyphListLoop = DrawGlyphList.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawGlyphListAALoop = DrawGlyphListAA.locate(surfaceType, compositeType, surfaceType2);
        renderLoops.drawGlyphListLCDLoop = DrawGlyphListLCD.locate(surfaceType, compositeType, surfaceType2);
        return renderLoops;
    }

    public static SurfaceData restoreContents(Image image) {
        return SurfaceManager.getManager(image).restoreContents();
    }

    public boolean canRenderLCDText(SunGraphics2D sunGraphics2D) {
        if (sunGraphics2D.compositeState > 0 || sunGraphics2D.paintState > 1 || sunGraphics2D.clipState > 1 || sunGraphics2D.surfaceData.getTransparency() != 1) {
            return false;
        }
        if (this.haveLCDLoop == 0) {
            this.haveLCDLoop = DrawGlyphListLCD.locate(SurfaceType.AnyColor, CompositeType.SrcNoEa, getSurfaceType()) != null ? 1 : 2;
        }
        return this.haveLCDLoop == 1;
    }

    public boolean canRenderParallelograms(SunGraphics2D sunGraphics2D) {
        if (sunGraphics2D.paintState > 1) {
            return false;
        }
        int i = sunGraphics2D.compositeState;
        if (i == 2) {
            if (this.havePgramXORLoop == 0) {
                this.havePgramXORLoop = FillParallelogram.locate(SurfaceType.AnyColor, CompositeType.Xor, getSurfaceType()) != null ? 1 : 2;
            }
            return this.havePgramXORLoop == 1;
        }
        if (i > 0 || sunGraphics2D.antialiasHint == 2 || sunGraphics2D.clipState == 2) {
            return false;
        }
        if (this.havePgramSolidLoop == 0) {
            this.havePgramSolidLoop = FillParallelogram.locate(SurfaceType.AnyColor, CompositeType.SrcNoEa, getSurfaceType()) != null ? 1 : 2;
        }
        return this.havePgramSolidLoop == 1;
    }

    public void checkCustomComposite() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            if (compPermission == null) {
                compPermission = new AWTPermission("readDisplayPixels");
            }
            securityManager.checkPermission(compPermission);
        }
    }

    public boolean copyArea(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        return false;
    }

    public void flush() {
    }

    public abstract Rectangle getBounds();

    public final ColorModel getColorModel() {
        return this.colorModel;
    }

    public int getDefaultScale() {
        return 1;
    }

    public abstract Object getDestination();

    public abstract GraphicsConfiguration getDeviceConfiguration();

    @Override // sun.java2d.DisposerTarget
    public Object getDisposerReferent() {
        return this.disposerReferent;
    }

    public MaskFill getMaskFill(SunGraphics2D sunGraphics2D) {
        return MaskFill.getFromCache(getPaintSurfaceType(sunGraphics2D), getFillCompositeType(sunGraphics2D), getSurfaceType());
    }

    public long getNativeOps() {
        return this.pData;
    }

    public abstract Raster getRaster(int i, int i2, int i3, int i4);

    public RenderLoops getRenderLoops(SunGraphics2D sunGraphics2D) {
        SurfaceType paintSurfaceType = getPaintSurfaceType(sunGraphics2D);
        CompositeType fillCompositeType = getFillCompositeType(sunGraphics2D);
        SurfaceType surfaceType = sunGraphics2D.getSurfaceData().getSurfaceType();
        Object obj = loopcache.get(paintSurfaceType, fillCompositeType, surfaceType);
        if (obj != null) {
            return (RenderLoops) obj;
        }
        RenderLoops makeRenderLoops = makeRenderLoops(paintSurfaceType, fillCompositeType, surfaceType);
        loopcache.put(paintSurfaceType, fillCompositeType, surfaceType, makeRenderLoops);
        return makeRenderLoops;
    }

    public abstract SurfaceData getReplacement();

    public SurfaceData getSourceSurfaceData(Image image, int i, CompositeType compositeType, Color color) {
        Object obj;
        SurfaceManager manager = SurfaceManager.getManager(image);
        SurfaceData primarySurfaceData = manager.getPrimarySurfaceData();
        if (image.getAccelerationPriority() <= 0.0f || (obj = this.blitProxyKey) == null) {
            return primarySurfaceData;
        }
        SurfaceDataProxy surfaceDataProxy = (SurfaceDataProxy) manager.getCacheData(obj);
        if (surfaceDataProxy == null || !surfaceDataProxy.isValid()) {
            surfaceDataProxy = primarySurfaceData.getState() == StateTrackable.State.UNTRACKABLE ? SurfaceDataProxy.UNCACHED : makeProxyFor(primarySurfaceData);
            manager.setCacheData(this.blitProxyKey, surfaceDataProxy);
        }
        return surfaceDataProxy.replaceData(primarySurfaceData, i, compositeType, color);
    }

    @Override // sun.java2d.StateTrackable
    public StateTrackable.State getState() {
        return this.stateDelegate.getState();
    }

    @Override // sun.java2d.StateTrackable
    public StateTracker getStateTracker() {
        return this.stateDelegate.getStateTracker();
    }

    public final SurfaceType getSurfaceType() {
        return this.surfaceType;
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return getColorModel().getTransparency();
    }

    public void invalidate() {
        this.valid = false;
        this.stateDelegate.markDirty();
    }

    public boolean isSurfaceLost() {
        return this.surfaceLost;
    }

    public final boolean isValid() {
        return this.valid;
    }

    public SurfaceDataProxy makeProxyFor(SurfaceData surfaceData) {
        return SurfaceDataProxy.UNCACHED;
    }

    public final void markDirty() {
        this.stateDelegate.markDirty();
    }

    public int pixelFor(int i) {
        return this.surfaceType.pixelFor(i, this.colorModel);
    }

    public int rgbFor(int i) {
        return this.surfaceType.rgbFor(i, this.colorModel);
    }

    public void setBlitProxyKey(Object obj) {
        if (SurfaceDataProxy.isCachingAllowed()) {
            this.blitProxyKey = obj;
        }
    }

    public void setSurfaceLost(boolean z) {
        this.surfaceLost = z;
        this.stateDelegate.markDirty();
    }

    public boolean useTightBBoxes() {
        return true;
    }

    public void validatePipe(SunGraphics2D sunGraphics2D) {
        PixelToShapeConverter pixelToShapeConverter;
        PixelToShapeConverter pixelToShapeConverter2;
        sunGraphics2D.imagepipe = imagepipe;
        int i = sunGraphics2D.compositeState;
        if (i == 2) {
            if (sunGraphics2D.paintState > 1) {
                PixelToShapeConverter pixelToShapeConverter3 = paintViaShape;
                sunGraphics2D.drawpipe = pixelToShapeConverter3;
                sunGraphics2D.fillpipe = pixelToShapeConverter3;
                sunGraphics2D.shapepipe = paintShape;
                sunGraphics2D.textpipe = outlineTextRenderer;
            } else {
                if (canRenderParallelograms(sunGraphics2D)) {
                    PixelToParallelogramConverter pixelToParallelogramConverter = colorViaPgram;
                    sunGraphics2D.shapepipe = pixelToParallelogramConverter;
                    pixelToShapeConverter2 = pixelToParallelogramConverter;
                } else {
                    PixelToShapeConverter pixelToShapeConverter4 = colorViaShape;
                    sunGraphics2D.shapepipe = colorPrimitives;
                    pixelToShapeConverter2 = pixelToShapeConverter4;
                }
                if (sunGraphics2D.clipState == 2) {
                    sunGraphics2D.drawpipe = pixelToShapeConverter2;
                    sunGraphics2D.fillpipe = pixelToShapeConverter2;
                    sunGraphics2D.textpipe = outlineTextRenderer;
                } else {
                    if (sunGraphics2D.transformState >= 3) {
                        sunGraphics2D.drawpipe = pixelToShapeConverter2;
                        sunGraphics2D.fillpipe = pixelToShapeConverter2;
                    } else {
                        if (sunGraphics2D.strokeState != 0) {
                            sunGraphics2D.drawpipe = pixelToShapeConverter2;
                        } else {
                            sunGraphics2D.drawpipe = colorPrimitives;
                        }
                        sunGraphics2D.fillpipe = colorPrimitives;
                    }
                    sunGraphics2D.textpipe = solidTextRenderer;
                }
            }
        } else if (i == 3) {
            if (sunGraphics2D.antialiasHint != 2) {
                PixelToShapeConverter pixelToShapeConverter5 = compViaShape;
                sunGraphics2D.drawpipe = pixelToShapeConverter5;
                sunGraphics2D.fillpipe = pixelToShapeConverter5;
                sunGraphics2D.shapepipe = compShape;
                if (sunGraphics2D.clipState == 2) {
                    sunGraphics2D.textpipe = clipCompText;
                } else {
                    sunGraphics2D.textpipe = compText;
                }
            } else if (sunGraphics2D.clipState == 2) {
                PixelToParallelogramConverter pixelToParallelogramConverter2 = AAClipCompViaShape;
                sunGraphics2D.drawpipe = pixelToParallelogramConverter2;
                sunGraphics2D.fillpipe = pixelToParallelogramConverter2;
                sunGraphics2D.shapepipe = pixelToParallelogramConverter2;
                sunGraphics2D.textpipe = clipCompText;
            } else {
                PixelToParallelogramConverter pixelToParallelogramConverter3 = AACompViaShape;
                sunGraphics2D.drawpipe = pixelToParallelogramConverter3;
                sunGraphics2D.fillpipe = pixelToParallelogramConverter3;
                sunGraphics2D.shapepipe = pixelToParallelogramConverter3;
                sunGraphics2D.textpipe = compText;
            }
        } else if (sunGraphics2D.antialiasHint == 2) {
            MaskFill maskFill = getMaskFill(sunGraphics2D);
            sunGraphics2D.alphafill = maskFill;
            if (maskFill != null) {
                if (sunGraphics2D.clipState == 2) {
                    PixelToParallelogramConverter pixelToParallelogramConverter4 = AAClipColorViaShape;
                    sunGraphics2D.drawpipe = pixelToParallelogramConverter4;
                    sunGraphics2D.fillpipe = pixelToParallelogramConverter4;
                    sunGraphics2D.shapepipe = pixelToParallelogramConverter4;
                    sunGraphics2D.textpipe = clipColorText;
                } else {
                    PixelToParallelogramConverter pixelToParallelogramConverter5 = maskFill.canDoParallelograms() ? AAColorViaPgram : AAColorViaShape;
                    sunGraphics2D.drawpipe = pixelToParallelogramConverter5;
                    sunGraphics2D.fillpipe = pixelToParallelogramConverter5;
                    sunGraphics2D.shapepipe = pixelToParallelogramConverter5;
                    if (sunGraphics2D.paintState > 1 || sunGraphics2D.compositeState > 0) {
                        sunGraphics2D.textpipe = colorText;
                    } else {
                        sunGraphics2D.textpipe = getTextPipe(sunGraphics2D, true);
                    }
                }
            } else if (sunGraphics2D.clipState == 2) {
                PixelToParallelogramConverter pixelToParallelogramConverter6 = AAClipPaintViaShape;
                sunGraphics2D.drawpipe = pixelToParallelogramConverter6;
                sunGraphics2D.fillpipe = pixelToParallelogramConverter6;
                sunGraphics2D.shapepipe = pixelToParallelogramConverter6;
                sunGraphics2D.textpipe = clipPaintText;
            } else {
                PixelToParallelogramConverter pixelToParallelogramConverter7 = AAPaintViaShape;
                sunGraphics2D.drawpipe = pixelToParallelogramConverter7;
                sunGraphics2D.fillpipe = pixelToParallelogramConverter7;
                sunGraphics2D.shapepipe = pixelToParallelogramConverter7;
                sunGraphics2D.textpipe = paintText;
            }
        } else if (sunGraphics2D.paintState > 1 || i > 0 || sunGraphics2D.clipState == 2) {
            PixelToShapeConverter pixelToShapeConverter6 = paintViaShape;
            sunGraphics2D.drawpipe = pixelToShapeConverter6;
            sunGraphics2D.fillpipe = pixelToShapeConverter6;
            sunGraphics2D.shapepipe = paintShape;
            MaskFill maskFill2 = getMaskFill(sunGraphics2D);
            sunGraphics2D.alphafill = maskFill2;
            if (maskFill2 != null) {
                if (sunGraphics2D.clipState == 2) {
                    sunGraphics2D.textpipe = clipColorText;
                } else {
                    sunGraphics2D.textpipe = colorText;
                }
            } else if (sunGraphics2D.clipState == 2) {
                sunGraphics2D.textpipe = clipPaintText;
            } else {
                sunGraphics2D.textpipe = paintText;
            }
        } else {
            if (canRenderParallelograms(sunGraphics2D)) {
                PixelToParallelogramConverter pixelToParallelogramConverter8 = colorViaPgram;
                sunGraphics2D.shapepipe = pixelToParallelogramConverter8;
                pixelToShapeConverter = pixelToParallelogramConverter8;
            } else {
                PixelToShapeConverter pixelToShapeConverter7 = colorViaShape;
                sunGraphics2D.shapepipe = colorPrimitives;
                pixelToShapeConverter = pixelToShapeConverter7;
            }
            if (sunGraphics2D.transformState >= 3) {
                sunGraphics2D.drawpipe = pixelToShapeConverter;
                sunGraphics2D.fillpipe = pixelToShapeConverter;
            } else {
                if (sunGraphics2D.strokeState != 0) {
                    sunGraphics2D.drawpipe = pixelToShapeConverter;
                } else {
                    sunGraphics2D.drawpipe = colorPrimitives;
                }
                sunGraphics2D.fillpipe = colorPrimitives;
            }
            sunGraphics2D.textpipe = getTextPipe(sunGraphics2D, false);
        }
        if ((sunGraphics2D.textpipe instanceof LoopBasedPipe) || (sunGraphics2D.shapepipe instanceof LoopBasedPipe) || (sunGraphics2D.fillpipe instanceof LoopBasedPipe) || (sunGraphics2D.drawpipe instanceof LoopBasedPipe) || (sunGraphics2D.imagepipe instanceof LoopBasedPipe)) {
            sunGraphics2D.loops = getRenderLoops(sunGraphics2D);
        }
    }

    public SurfaceData(StateTrackable.State state, SurfaceType surfaceType, ColorModel colorModel) {
        this(StateTrackableDelegate.createInstance(state), surfaceType, colorModel);
    }

    private static PixelToParallelogramConverter makeConverter(AAShapePipe aAShapePipe) {
        return makeConverter(aAShapePipe, aAShapePipe);
    }

    public int pixelFor(Color color) {
        return pixelFor(color.getRGB());
    }

    public SurfaceData(StateTrackableDelegate stateTrackableDelegate, SurfaceType surfaceType, ColorModel colorModel) {
        this.disposerReferent = new Object();
        this.stateDelegate = stateTrackableDelegate;
        this.colorModel = colorModel;
        this.surfaceType = surfaceType;
        this.valid = true;
    }

    public SurfaceData(StateTrackable.State state) {
        this.disposerReferent = new Object();
        this.stateDelegate = StateTrackableDelegate.createInstance(state);
        this.valid = true;
    }
}
