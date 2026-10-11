package java.awt;

/* loaded from: classes4.dex */
public class AndroidGraphicsDevice extends GraphicsDevice {
    private GraphicsConfiguration[] configs;

    @Override // java.awt.GraphicsDevice
    public GraphicsConfiguration[] getConfigurations() {
        if (this.configs == null) {
            this.configs = new GraphicsConfiguration[]{new AndroidGraphicsConfiguration(this)};
        }
        return this.configs;
    }

    @Override // java.awt.GraphicsDevice
    public GraphicsConfiguration getDefaultConfiguration() {
        return getConfigurations()[0];
    }

    @Override // java.awt.GraphicsDevice
    public String getIDstring() {
        return "Android Graphics Device";
    }

    @Override // java.awt.GraphicsDevice
    public int getType() {
        return 0;
    }
}
