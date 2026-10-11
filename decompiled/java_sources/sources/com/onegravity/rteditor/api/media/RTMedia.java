package com.onegravity.rteditor.api.media;

import com.onegravity.rteditor.api.format.RTFormat;
import java.io.Serializable;

/* loaded from: classes7.dex */
public interface RTMedia extends Serializable {
    boolean exists();

    String getFileExtension();

    String getFileName();

    String getFilePath(RTFormat rTFormat);

    int getHeight();

    long getSize();

    int getWidth();

    void remove();
}
