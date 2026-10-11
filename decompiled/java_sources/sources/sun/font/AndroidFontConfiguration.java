package sun.font;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import sun.awt.FontConfiguration;
import sun.awt.WFontConfiguration;

/* loaded from: classes16.dex */
public class AndroidFontConfiguration extends WFontConfiguration {
    public AndroidFontConfiguration(SunFontManager sunFontManager) {
        super(sunFontManager);
    }

    @Override // sun.awt.FontConfiguration
    public void findFontConfigFile() {
        this.fontConfigFile = new File("/fontconfig.bfc");
        FontConfiguration.isProperties = false;
    }

    @Override // sun.awt.FontConfiguration
    public void readFontConfigFile(File file) {
        getInstalledFallbackFonts(this.javaLib);
        if (file != null) {
            try {
                InputStream resourceAsStream = AndroidFontConfiguration.class.getResourceAsStream(file.getPath());
                if (FontConfiguration.isProperties) {
                    FontConfiguration.loadProperties(resourceAsStream);
                } else {
                    FontConfiguration.loadBinary(resourceAsStream);
                }
                resourceAsStream.close();
                if (FontUtilities.debugFonts()) {
                    FontConfiguration.logger.config("Read logical font configuration from " + file);
                }
            } catch (IOException unused) {
                if (FontUtilities.debugFonts()) {
                    FontConfiguration.logger.config("Failed to read logical font configuration from " + file);
                }
            }
        }
        String version = getVersion();
        if ("1".equals(version) || !FontUtilities.debugFonts()) {
            return;
        }
        FontConfiguration.logger.config("Unsupported fontconfig version: " + version);
    }

    public AndroidFontConfiguration(SunFontManager sunFontManager, boolean z, boolean z2) {
        super(sunFontManager, z, z2);
    }
}
