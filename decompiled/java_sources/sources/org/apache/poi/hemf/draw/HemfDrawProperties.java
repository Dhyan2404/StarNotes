package org.apache.poi.hemf.draw;

import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.poi.hemf.record.emfplus.HemfPlusBrush;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.sl.draw.ImageRenderer;

/* loaded from: classes12.dex */
public class HemfDrawProperties extends HwmfDrawProperties {
    private List<? extends Map.Entry<Float, Color>> brushColorsH;
    private List<? extends Map.Entry<Float, Color>> brushColorsV;
    private Rectangle2D brushRect;
    private HemfPlusBrush.EmfPlusHatchStyle emfPlusBrushHatch;
    private ImageRenderer emfPlusImage;
    protected Path2D path;
    private final List<TransOperand> transOper;
    private final List<AffineTransform> transXForm;
    protected boolean usePathBracket;

    /* loaded from: classes12.dex */
    public enum TransOperand {
        left(new BiConsumer() { // from class: com.sunia.HTREnginev2.shh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((AffineTransform) obj).concatenate((AffineTransform) obj2);
            }
        }),
        right(new BiConsumer() { // from class: com.sunia.HTREnginev2.thh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((AffineTransform) obj).preConcatenate((AffineTransform) obj2);
            }
        });

        BiConsumer<AffineTransform, AffineTransform> fun;

        TransOperand(BiConsumer biConsumer) {
            this.fun = biConsumer;
        }
    }

    public HemfDrawProperties() {
        this.path = null;
        this.usePathBracket = false;
        this.transXForm = new ArrayList();
        this.transOper = new ArrayList();
    }

    private void addLRTransform(AffineTransform affineTransform, TransOperand transOperand) {
        if (affineTransform.isIdentity()) {
            return;
        }
        if (affineTransform.equals(last(this.transXForm)) && transOperand.equals(last(this.transOper))) {
            return;
        }
        this.transXForm.add(affineTransform);
        this.transOper.add(transOperand);
    }

    private static <T> T last(List<T> list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public void addLeftTransform(AffineTransform affineTransform) {
        addLRTransform(affineTransform, TransOperand.left);
    }

    public void addRightTransform(AffineTransform affineTransform) {
        addLRTransform(affineTransform, TransOperand.right);
    }

    public void clearTransform() {
        this.transXForm.clear();
        this.transOper.clear();
    }

    public List<? extends Map.Entry<Float, Color>> getBrushColorsH() {
        return this.brushColorsH;
    }

    public List<? extends Map.Entry<Float, Color>> getBrushColorsV() {
        return this.brushColorsV;
    }

    public Rectangle2D getBrushRect() {
        return this.brushRect;
    }

    public HemfPlusBrush.EmfPlusHatchStyle getEmfPlusBrushHatch() {
        return this.emfPlusBrushHatch;
    }

    public ImageRenderer getEmfPlusImage() {
        return this.emfPlusImage;
    }

    public Path2D getPath() {
        return this.path;
    }

    public List<TransOperand> getTransOper() {
        return this.transOper;
    }

    public List<AffineTransform> getTransXForm() {
        return this.transXForm;
    }

    public boolean getUsePathBracket() {
        return this.usePathBracket;
    }

    public void setBrushColorsH(List<? extends Map.Entry<Float, Color>> list) {
        this.brushColorsH = list;
    }

    public void setBrushColorsV(List<? extends Map.Entry<Float, Color>> list) {
        this.brushColorsV = list;
    }

    public void setBrushRect(Rectangle2D rectangle2D) {
        this.brushRect = rectangle2D;
    }

    public void setEmfPlusBrushHatch(HemfPlusBrush.EmfPlusHatchStyle emfPlusHatchStyle) {
        this.emfPlusBrushHatch = emfPlusHatchStyle;
    }

    public void setEmfPlusImage(ImageRenderer imageRenderer) {
        this.emfPlusImage = imageRenderer;
    }

    public void setPath(Path2D path2D) {
        this.path = path2D;
    }

    public void setUsePathBracket(boolean z) {
        this.usePathBracket = z;
    }

    public HemfDrawProperties(HemfDrawProperties hemfDrawProperties) {
        super(hemfDrawProperties);
        this.path = null;
        this.usePathBracket = false;
        ArrayList arrayList = new ArrayList();
        this.transXForm = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.transOper = arrayList2;
        Path2D path2D = hemfDrawProperties.path;
        this.path = path2D != null ? (Path2D) path2D.clone() : null;
        this.usePathBracket = hemfDrawProperties.usePathBracket;
        this.emfPlusBrushHatch = hemfDrawProperties.emfPlusBrushHatch;
        this.clip = hemfDrawProperties.clip;
        this.emfPlusImage = hemfDrawProperties.emfPlusImage;
        arrayList.addAll(hemfDrawProperties.transXForm);
        arrayList2.addAll(hemfDrawProperties.transOper);
        Rectangle2D rectangle2D = hemfDrawProperties.brushRect;
        if (rectangle2D != null) {
            this.brushRect = (Rectangle2D) rectangle2D.clone();
        }
        if (hemfDrawProperties.brushColorsV != null) {
            this.brushColorsV = new ArrayList(hemfDrawProperties.brushColorsV);
        }
        if (hemfDrawProperties.brushColorsH != null) {
            this.brushColorsH = new ArrayList(hemfDrawProperties.brushColorsH);
        }
    }
}
