package java.awt;

import java.awt.font.TextAttribute;
import java.awt.im.InputMethodHighlight;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.awt.peer.FontPeer;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import org.apache.commons.lang3.SystemUtils;
import sun.awt.AWTAccessor;
import sun.awt.AppContext;

/* loaded from: classes4.dex */
public abstract class Toolkit {
    private static final int LONG_BITS = 64;
    private static String atNames;
    private static volatile long enabledOnToolkitMask;
    private static boolean loaded;
    private static ResourceBundle platformResources;
    private static ResourceBundle resources;
    private static Toolkit toolkit;
    protected final Map<String, Object> desktopProperties = new HashMap();
    protected final PropertyChangeSupport desktopPropsSupport = createPropertyChangeSupport(this);
    private int[] calls = new int[64];

    static {
        AWTAccessor.setToolkitAccessor(new AWTAccessor.ToolkitAccessor() { // from class: java.awt.Toolkit.3
            @Override // sun.awt.AWTAccessor.ToolkitAccessor
            public void setPlatformResources(ResourceBundle resourceBundle) {
                Toolkit.setPlatformResources(resourceBundle);
            }
        });
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: java.awt.Toolkit.4
            @Override // java.security.PrivilegedAction
            public Void run() {
                try {
                    ResourceBundle unused = Toolkit.resources = ResourceBundle.getBundle("sun.awt.resources.awt", ResourceBundle.Control.getControl(ResourceBundle.Control.FORMAT_DEFAULT));
                    return null;
                } catch (MissingResourceException unused2) {
                    return null;
                }
            }
        });
        loadLibraries();
        initAssistiveTechnologies();
    }

    public static AppContext createNewAppContext() {
        return createNewAppContext(Thread.currentThread().getThreadGroup());
    }

    private static PropertyChangeSupport createPropertyChangeSupport(Toolkit toolkit2) {
        return new PropertyChangeSupport(toolkit2);
    }

    public static synchronized Toolkit getDefaultToolkit() {
        Toolkit toolkit2;
        synchronized (Toolkit.class) {
            if (toolkit == null) {
                AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: java.awt.Toolkit.2
                    @Override // java.security.PrivilegedAction
                    public Void run() {
                        Class<?> loadClass;
                        String property = System.getProperty("awt.toolkit", "java.awt.AndroidToolkit");
                        try {
                            loadClass = Class.forName(property);
                        } catch (ClassNotFoundException unused) {
                            ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                            if (systemClassLoader != null) {
                                try {
                                    loadClass = systemClassLoader.loadClass(property);
                                } catch (ClassNotFoundException unused2) {
                                    throw new AWTError("Toolkit not found: " + property);
                                }
                            } else {
                                loadClass = null;
                            }
                        }
                        try {
                            if (loadClass != null) {
                                Toolkit unused3 = Toolkit.toolkit = (Toolkit) loadClass.newInstance();
                            } else {
                                Toolkit unused4 = Toolkit.toolkit = new AndroidToolkit();
                            }
                            return null;
                        } catch (IllegalAccessException unused5) {
                            throw new AWTError("Could not access Toolkit: " + property);
                        } catch (InstantiationException unused6) {
                            throw new AWTError("Could not instantiate Toolkit: " + property);
                        }
                    }
                });
                loadAssistiveTechnologies();
            }
            toolkit2 = toolkit;
        }
        return toolkit2;
    }

    public static String getProperty(String str, String str2) {
        ResourceBundle resourceBundle = platformResources;
        if (resourceBundle != null) {
            try {
                return resourceBundle.getString(str);
            } catch (MissingResourceException unused) {
            }
        }
        ResourceBundle resourceBundle2 = resources;
        if (resourceBundle2 != null) {
            try {
                return resourceBundle2.getString(str);
            } catch (MissingResourceException unused2) {
            }
        }
        return str2;
    }

    private static void initAssistiveTechnologies() {
        final String str = File.separator;
        final Properties properties = new Properties();
        atNames = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: java.awt.Toolkit.1
            @Override // java.security.PrivilegedAction
            public String run() {
                String property;
                try {
                    FileInputStream fileInputStream = new FileInputStream(new File(System.getProperty(SystemUtils.f107421b) + str + ".accessibility.properties"));
                    properties.load(fileInputStream);
                    fileInputStream.close();
                } catch (Exception unused) {
                }
                if (properties.size() == 0) {
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(new File(System.getProperty(SystemUtils.f107424e) + str + "lib" + str + "accessibility.properties"));
                        properties.load(fileInputStream2);
                        fileInputStream2.close();
                    } catch (Exception unused2) {
                    }
                }
                if (System.getProperty("javax.accessibility.screen_magnifier_present") == null && (property = properties.getProperty("screen_magnifier_present", null)) != null) {
                    System.setProperty("javax.accessibility.screen_magnifier_present", property);
                }
                String property2 = System.getProperty("javax.accessibility.assistive_technologies");
                if (property2 == null && (property2 = properties.getProperty("assistive_technologies", null)) != null) {
                    System.setProperty("javax.accessibility.assistive_technologies", property2);
                }
                return property2;
            }
        });
    }

    private static void initIDs() {
    }

    private static void loadAssistiveTechnologies() {
        Class<?> loadClass;
        if (atNames != null) {
            ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
            StringTokenizer stringTokenizer = new StringTokenizer(atNames, " ,");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (systemClassLoader != null) {
                    try {
                        loadClass = systemClassLoader.loadClass(nextToken);
                    } catch (ClassNotFoundException unused) {
                        throw new AWTError("Assistive Technology not found: " + nextToken);
                    } catch (IllegalAccessException unused2) {
                        throw new AWTError("Could not access Assistive Technology: " + nextToken);
                    } catch (InstantiationException unused3) {
                        throw new AWTError("Could not instantiate Assistive Technology: " + nextToken);
                    } catch (Exception e) {
                        throw new AWTError("Error trying to install Assistive Technology: " + nextToken + " " + e);
                    }
                } else {
                    loadClass = Class.forName(nextToken);
                }
                loadClass.newInstance();
            }
        }
    }

    public static void loadLibraries() {
        if (loaded) {
            return;
        }
        loaded = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setPlatformResources(ResourceBundle resourceBundle) {
        platformResources = resourceBundle;
    }

    public void addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        this.desktopPropsSupport.addPropertyChangeListener(str, propertyChangeListener);
    }

    public boolean areExtraMouseButtonsEnabled() throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        return getDefaultToolkit().areExtraMouseButtonsEnabled();
    }

    public abstract void beep();

    public abstract int checkImage(Image image, int i, int i2, ImageObserver imageObserver);

    public Cursor createCustomCursor(Image image, Point point, String str) throws IndexOutOfBoundsException, HeadlessException {
        return this != getDefaultToolkit() ? getDefaultToolkit().createCustomCursor(image, point, str) : new Cursor(0);
    }

    public abstract Image createImage(ImageProducer imageProducer);

    public abstract Image createImage(String str);

    public abstract Image createImage(URL url);

    public Image createImage(byte[] bArr) {
        return createImage(bArr, 0, bArr.length);
    }

    public abstract Image createImage(byte[] bArr, int i, int i2);

    public Dimension getBestCursorSize(int i, int i2) throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        return this != getDefaultToolkit() ? getDefaultToolkit().getBestCursorSize(i, i2) : new Dimension(0, 0);
    }

    public abstract ColorModel getColorModel() throws HeadlessException;

    public final synchronized Object getDesktopProperty(String str) {
        if (this.desktopProperties.isEmpty()) {
            initializeDesktopProperties();
        }
        if (str.equals("awt.dynamicLayoutSupported")) {
            return getDefaultToolkit().lazilyLoadDesktopProperty(str);
        }
        Object obj = this.desktopProperties.get(str);
        if (obj == null && (obj = lazilyLoadDesktopProperty(str)) != null) {
            setDesktopProperty(str, obj);
        }
        if (obj instanceof RenderingHints) {
            obj = ((RenderingHints) obj).clone();
        }
        return obj;
    }

    @Deprecated
    public abstract String[] getFontList();

    @Deprecated
    public abstract FontMetrics getFontMetrics(Font font);

    @Deprecated
    public abstract FontPeer getFontPeer(String str, int i);

    public abstract Image getImage(String str);

    public abstract Image getImage(URL url);

    public int getMaximumCursorColors() throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        if (this != getDefaultToolkit()) {
            return getDefaultToolkit().getMaximumCursorColors();
        }
        return 0;
    }

    public int getMenuShortcutKeyMask() throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        return 0;
    }

    public PropertyChangeListener[] getPropertyChangeListeners() {
        return this.desktopPropsSupport.getPropertyChangeListeners();
    }

    public Insets getScreenInsets(GraphicsConfiguration graphicsConfiguration) throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        return this != getDefaultToolkit() ? getDefaultToolkit().getScreenInsets(graphicsConfiguration) : new Insets(0, 0, 0, 0);
    }

    public abstract int getScreenResolution() throws HeadlessException;

    public abstract Dimension getScreenSize() throws HeadlessException;

    public void initializeDesktopProperties() {
    }

    public boolean isAlwaysOnTopSupported() {
        return true;
    }

    public boolean isDynamicLayoutActive() throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        if (this != getDefaultToolkit()) {
            return getDefaultToolkit().isDynamicLayoutActive();
        }
        return false;
    }

    public boolean isDynamicLayoutSet() throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        if (this != getDefaultToolkit()) {
            return getDefaultToolkit().isDynamicLayoutSet();
        }
        return false;
    }

    public Object lazilyLoadDesktopProperty(String str) {
        return null;
    }

    public void loadSystemColors(int[] iArr) throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
    }

    public abstract Map<TextAttribute, ?> mapInputMethodHighlight(InputMethodHighlight inputMethodHighlight) throws HeadlessException;

    public abstract boolean prepareImage(Image image, int i, int i2, ImageObserver imageObserver);

    public void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        this.desktopPropsSupport.removePropertyChangeListener(str, propertyChangeListener);
    }

    public final void setDesktopProperty(String str, Object obj) {
        Object obj2;
        synchronized (this) {
            obj2 = this.desktopProperties.get(str);
            this.desktopProperties.put(str, obj);
        }
        if (obj2 == null && obj == null) {
            return;
        }
        this.desktopPropsSupport.firePropertyChange(str, obj2, obj);
    }

    public void setDynamicLayout(boolean z) throws HeadlessException {
        GraphicsEnvironment.checkHeadless();
        if (this != getDefaultToolkit()) {
            getDefaultToolkit().setDynamicLayout(z);
        }
    }

    public abstract void sync();

    public PropertyChangeListener[] getPropertyChangeListeners(String str) {
        return this.desktopPropsSupport.getPropertyChangeListeners(str);
    }

    /* loaded from: classes4.dex */
    public static class DesktopPropertyChangeSupport extends PropertyChangeSupport {
        private static final StringBuilder PROP_CHANGE_SUPPORT_KEY = new StringBuilder("desktop property change support key");
        private final Object source;

        public DesktopPropertyChangeSupport(Object obj) {
            super(obj);
            this.source = obj;
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized void addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
            AppContext appContext = AppContext.getAppContext();
            StringBuilder sb = PROP_CHANGE_SUPPORT_KEY;
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) appContext.get(sb);
            if (propertyChangeSupport == null) {
                propertyChangeSupport = new PropertyChangeSupport(this.source);
                AppContext.getAppContext().put(sb, propertyChangeSupport);
            }
            propertyChangeSupport.addPropertyChangeListener(str, propertyChangeListener);
        }

        @Override // java.beans.PropertyChangeSupport
        public void firePropertyChange(final PropertyChangeEvent propertyChangeEvent) {
            Object oldValue = propertyChangeEvent.getOldValue();
            Object newValue = propertyChangeEvent.getNewValue();
            propertyChangeEvent.getPropertyName();
            if (oldValue == null || newValue == null || !oldValue.equals(newValue)) {
                Runnable runnable = new Runnable() { // from class: java.awt.Toolkit.DesktopPropertyChangeSupport.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) AppContext.getAppContext().get(DesktopPropertyChangeSupport.PROP_CHANGE_SUPPORT_KEY);
                        if (propertyChangeSupport != null) {
                            propertyChangeSupport.firePropertyChange(propertyChangeEvent);
                        }
                    }
                };
                AppContext appContext = AppContext.getAppContext();
                for (AppContext appContext2 : AppContext.getAppContexts()) {
                    if (appContext2 != null && !appContext2.isDisposed() && appContext == appContext2) {
                        runnable.run();
                    }
                }
            }
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized PropertyChangeListener[] getPropertyChangeListeners() {
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) AppContext.getAppContext().get(PROP_CHANGE_SUPPORT_KEY);
            if (propertyChangeSupport != null) {
                return propertyChangeSupport.getPropertyChangeListeners();
            }
            return new PropertyChangeListener[0];
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) AppContext.getAppContext().get(PROP_CHANGE_SUPPORT_KEY);
            if (propertyChangeSupport != null) {
                propertyChangeSupport.removePropertyChangeListener(str, propertyChangeListener);
            }
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized PropertyChangeListener[] getPropertyChangeListeners(String str) {
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) AppContext.getAppContext().get(PROP_CHANGE_SUPPORT_KEY);
            if (propertyChangeSupport != null) {
                return propertyChangeSupport.getPropertyChangeListeners(str);
            }
            return new PropertyChangeListener[0];
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) AppContext.getAppContext().get(PROP_CHANGE_SUPPORT_KEY);
            if (propertyChangeSupport != null) {
                propertyChangeSupport.removePropertyChangeListener(propertyChangeListener);
            }
        }

        @Override // java.beans.PropertyChangeSupport
        public synchronized void addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
            AppContext appContext = AppContext.getAppContext();
            StringBuilder sb = PROP_CHANGE_SUPPORT_KEY;
            PropertyChangeSupport propertyChangeSupport = (PropertyChangeSupport) appContext.get(sb);
            if (propertyChangeSupport == null) {
                propertyChangeSupport = new PropertyChangeSupport(this.source);
                AppContext.getAppContext().put(sb, propertyChangeSupport);
            }
            propertyChangeSupport.addPropertyChangeListener(propertyChangeListener);
        }
    }

    public static final AppContext createNewAppContext(ThreadGroup threadGroup) {
        return new AppContext(threadGroup);
    }
}
