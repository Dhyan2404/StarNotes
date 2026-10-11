package java.awt;

import android.content.Context;
import android.util.DisplayMetrics;
import com.onyx.common.util.ContextUtils;
import java.awt.font.TextAttribute;
import java.awt.im.InputMethodHighlight;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.awt.peer.FontPeer;
import java.net.URL;
import java.util.Map;

/* loaded from: classes4.dex */
public class AndroidToolkit extends Toolkit {
    @Override // java.awt.Toolkit
    public void beep() {
    }

    @Override // java.awt.Toolkit
    public int checkImage(Image image, int i, int i2, ImageObserver imageObserver) {
        return 0;
    }

    @Override // java.awt.Toolkit
    public Image createImage(ImageProducer imageProducer) {
        return null;
    }

    @Override // java.awt.Toolkit
    public ColorModel getColorModel() throws HeadlessException {
        return null;
    }

    public Context getContext() {
        return ContextUtils.getContext();
    }

    @Override // java.awt.Toolkit
    public String[] getFontList() {
        return new String[0];
    }

    @Override // java.awt.Toolkit
    public FontMetrics getFontMetrics(Font font) {
        return null;
    }

    @Override // java.awt.Toolkit
    public FontPeer getFontPeer(String str, int i) {
        return null;
    }

    @Override // java.awt.Toolkit
    public Image getImage(String str) {
        return null;
    }

    @Override // java.awt.Toolkit
    public int getScreenResolution() throws HeadlessException {
        return 96;
    }

    @Override // java.awt.Toolkit
    public Dimension getScreenSize() throws HeadlessException {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        return new Dimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    @Override // java.awt.Toolkit
    public Map<TextAttribute, ?> mapInputMethodHighlight(InputMethodHighlight inputMethodHighlight) throws HeadlessException {
        return null;
    }

    @Override // java.awt.Toolkit
    public boolean prepareImage(Image image, int i, int i2, ImageObserver imageObserver) {
        return false;
    }

    @Override // java.awt.Toolkit
    public void sync() {
    }

    @Override // java.awt.Toolkit
    public Image createImage(String str) {
        return null;
    }

    @Override // java.awt.Toolkit
    public Image getImage(URL url) {
        return null;
    }

    @Override // java.awt.Toolkit
    public Image createImage(URL url) {
        return null;
    }

    @Override // java.awt.Toolkit
    public Image createImage(byte[] bArr, int i, int i2) {
        return null;
    }
}
