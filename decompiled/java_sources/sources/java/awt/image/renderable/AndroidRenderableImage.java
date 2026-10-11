package java.awt.image.renderable;

import android.graphics.Bitmap;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.CollectionUtils;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.AndroidImage;
import com.trans.android.BufferedImageWrapper;
import java.awt.RenderingHints;
import java.awt.geom.Rectangle2D;
import java.io.Closeable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

/* loaded from: classes5.dex */
public class AndroidRenderableImage implements RenderableImage, Closeable {
    private AndroidImage image;
    protected Vector<AndroidRenderableImage> imageVector;
    protected Map props;

    public AndroidRenderableImage(AndroidImage androidImage) {
        this.imageVector = new Vector<>();
        this.props = new HashMap();
        this.image = androidImage;
        androidImage.setCloseable(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AndroidImage androidImage = this.image;
        if (androidImage != null) {
            androidImage.setCloseable(true);
            CloseUtils.close(this.image);
            this.image = null;
        }
        Iterator<AndroidRenderableImage> it2 = this.imageVector.iterator();
        while (it2.hasNext()) {
            CloseUtils.close(it2.next());
        }
        this.imageVector.clear();
    }

    public Rectangle2D getBounds2D() {
        if (this.image != null) {
            return new Rectangle2D.Float(0.0f, 0.0f, r0.getWidth(), this.image.getHeight());
        }
        if (this.imageVector.size() == 0) {
            return new Rectangle2D.Double(0.0d, 0.0d, 1.0d, 1.0d);
        }
        Iterator<AndroidRenderableImage> it2 = this.imageVector.iterator();
        Rectangle2D rectangle2D = (Rectangle2D) it2.next().getBounds2D().clone();
        while (it2.hasNext()) {
            Rectangle2D.union(rectangle2D, it2.next().getBounds2D(), rectangle2D);
        }
        return rectangle2D;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getHeight() {
        return (float) getBounds2D().getHeight();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getMinX() {
        return (float) getBounds2D().getX();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getMinY() {
        return (float) getBounds2D().getY();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public Object getProperty(String str) {
        Object obj = this.props.get(str);
        if (obj != null) {
            return obj;
        }
        Iterator<AndroidRenderableImage> it2 = this.imageVector.iterator();
        while (it2.hasNext()) {
            Object property = it2.next().getProperty(str);
            if (property != null) {
                return property;
            }
        }
        return null;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public String[] getPropertyNames() {
        Set keySet = this.props.keySet();
        Iterator it2 = keySet.iterator();
        String[] strArr = new String[keySet.size()];
        int i = 0;
        while (it2.hasNext()) {
            strArr[i] = (String) it2.next();
            i++;
        }
        Iterator<AndroidRenderableImage> it3 = this.imageVector.iterator();
        while (it3.hasNext()) {
            String[] propertyNames = it3.next().getPropertyNames();
            if (propertyNames.length != 0) {
                String[] strArr2 = new String[strArr.length + propertyNames.length];
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                System.arraycopy(strArr2, strArr.length, propertyNames, 0, propertyNames.length);
                strArr = strArr2;
            }
        }
        return strArr;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public Vector<AndroidRenderableImage> getSources() {
        return this.imageVector;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getWidth() {
        return (float) getBounds2D().getWidth();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public boolean isDynamic() {
        return false;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public BufferedImageWrapper createDefaultRendering() {
        AndroidImage androidImage = this.image;
        if (androidImage == null || !androidImage.isValid()) {
            Rectangle2D bounds2D = getBounds2D();
            AndroidImage androidImage2 = new AndroidImage(bounds2D.getWidth(), bounds2D.getHeight());
            this.image = androidImage2;
            AndroidGraphics2D createGraphics = androidImage2.createGraphics();
            if (!this.imageVector.isEmpty()) {
                Iterator<AndroidRenderableImage> it2 = this.imageVector.iterator();
                while (it2.hasNext()) {
                    createGraphics.drawRenderedImage(it2.next().createDefaultRendering(), null);
                }
            }
        }
        return new BufferedImageWrapper(this.image);
    }

    @Override // java.awt.image.renderable.RenderableImage
    public BufferedImageWrapper createRendering(RenderContext renderContext) {
        return createDefaultRendering().setRenderContext(renderContext);
    }

    @Override // java.awt.image.renderable.RenderableImage
    public BufferedImageWrapper createScaledRendering(int i, int i2, RenderingHints renderingHints) {
        BufferedImageWrapper createDefaultRendering = createDefaultRendering();
        AndroidImage androidImage = createDefaultRendering.getAndroidImage();
        return (androidImage.getWidth() == i && androidImage.getHeight() == i2) ? createDefaultRendering : new BufferedImageWrapper(new AndroidImage(Bitmap.createScaledBitmap(androidImage.getAndroidBitmap(), i, i2, true)));
    }

    public AndroidRenderableImage(AndroidRenderableImage androidRenderableImage) {
        this(androidRenderableImage, (Map) null);
    }

    public AndroidRenderableImage(AndroidRenderableImage androidRenderableImage, Map map) {
        this((List<AndroidRenderableImage>) Arrays.asList(androidRenderableImage), map);
    }

    public AndroidRenderableImage(List<AndroidRenderableImage> list, Map map) {
        this.imageVector = new Vector<>();
        this.props = new HashMap();
        CollectionUtils.safeAddAll(this.imageVector, list);
        CollectionUtils.safeAddAllMap(map, map);
    }
}
