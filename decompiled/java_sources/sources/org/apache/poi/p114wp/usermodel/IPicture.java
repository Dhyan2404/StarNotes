package org.apache.poi.p114wp.usermodel;

import java.awt.Image;
import java.awt.geom.Rectangle2D;
import java.io.Closeable;
import org.apache.poi.p114wp.draw.ImageCreator;

/* loaded from: classes13.dex */
public interface IPicture extends Closeable {
    Rectangle2D getAnchor();

    default <IMAGE extends Image> Rectangle2D getAnchor(ImageCreator<IMAGE> imageCreator) {
        return getAnchor();
    }

    String getContentType();

    <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator);

    String getName();

    Position getPosition();

    int identifier();

    default boolean isBehindDoc() {
        return false;
    }
}
