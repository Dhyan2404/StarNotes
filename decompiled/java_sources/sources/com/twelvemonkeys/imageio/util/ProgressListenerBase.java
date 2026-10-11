package com.twelvemonkeys.imageio.util;

import javax.imageio.ImageReader;
import javax.imageio.ImageWriter;
import javax.imageio.event.IIOReadProgressListener;
import javax.imageio.event.IIOWriteProgressListener;

/* loaded from: classes10.dex */
public abstract class ProgressListenerBase implements IIOReadProgressListener, IIOWriteProgressListener {
    @Override // javax.imageio.event.IIOReadProgressListener
    public void imageComplete(ImageReader imageReader) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void imageProgress(ImageReader imageReader, float f) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void imageStarted(ImageReader imageReader, int i) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void readAborted(ImageReader imageReader) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void sequenceComplete(ImageReader imageReader) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void sequenceStarted(ImageReader imageReader, int i) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void thumbnailComplete(ImageReader imageReader) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void thumbnailProgress(ImageReader imageReader, float f) {
    }

    @Override // javax.imageio.event.IIOReadProgressListener
    public void thumbnailStarted(ImageReader imageReader, int i, int i2) {
    }

    public void writeAborted(ImageWriter imageWriter) {
    }

    public void imageComplete(ImageWriter imageWriter) {
    }

    public void imageProgress(ImageWriter imageWriter, float f) {
    }

    public void imageStarted(ImageWriter imageWriter, int i) {
    }

    public void thumbnailComplete(ImageWriter imageWriter) {
    }

    public void thumbnailProgress(ImageWriter imageWriter, float f) {
    }

    public void thumbnailStarted(ImageWriter imageWriter, int i, int i2) {
    }
}
