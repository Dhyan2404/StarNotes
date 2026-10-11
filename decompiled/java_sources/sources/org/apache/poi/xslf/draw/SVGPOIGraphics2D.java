package org.apache.poi.xslf.draw;

import java.awt.RenderingHints;
import java.util.Map;
import org.apache.batik.svggen.SVGGeneratorContext;
import org.apache.batik.svggen.SVGGraphics2D;
import org.apache.poi.util.Internal;
import org.w3c.dom.Document;

@Internal
/* loaded from: classes13.dex */
public class SVGPOIGraphics2D extends SVGGraphics2D {
    private final RenderingHints hints;

    public SVGPOIGraphics2D(Document document, boolean z) {
        super(getCtx(document), z);
        this.hints = getGeneratorContext().getGraphicContextDefaults().getRenderingHints();
        getGeneratorContext().getExtensionHandler().setSvgGraphics2D(this);
    }

    private static SVGGeneratorContext getCtx(Document document) {
        SVGGeneratorContext createDefault = SVGGeneratorContext.createDefault(document);
        createDefault.setExtensionHandler(new SVGRenderExtension());
        SVGGeneratorContext.GraphicContextDefaults graphicContextDefaults = new SVGGeneratorContext.GraphicContextDefaults();
        graphicContextDefaults.setRenderingHints(new RenderingHints(null));
        createDefault.setGraphicContextDefaults(graphicContextDefaults);
        return createDefault;
    }

    public void addRenderingHints(Map map) {
        this.hints.putAll(map);
        super.addRenderingHints(map);
    }

    public void setRenderingHint(RenderingHints.Key key, Object obj) {
        this.hints.put(key, obj);
        super.setRenderingHint(key, obj);
    }

    public void setRenderingHints(Map map) {
        this.hints.clear();
        this.hints.putAll(map);
        super.setRenderingHints(map);
    }
}
