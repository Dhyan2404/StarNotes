package java.awt;

import com.onyx.galaxy.note.message.data.MessageConst;
import java.beans.ConstructorProperties;
import java.io.File;
import java.io.FileInputStream;
import java.io.Serializable;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.SystemUtils;
import sun.awt.AWTAccessor;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;
import sun.security.action.GetPropertyAction;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes4.dex */
public class Cursor implements Serializable {
    public static final int CROSSHAIR_CURSOR = 1;
    public static final int CUSTOM_CURSOR = -1;
    private static final String CursorDotPrefix = "Cursor.";
    public static final int DEFAULT_CURSOR = 0;
    private static final String DotFileSuffix = ".File";
    private static final String DotHotspotSuffix = ".HotSpot";
    private static final String DotNameSuffix = ".Name";
    public static final int E_RESIZE_CURSOR = 11;
    public static final int HAND_CURSOR = 12;
    public static final int MOVE_CURSOR = 13;
    public static final int NE_RESIZE_CURSOR = 7;
    public static final int NW_RESIZE_CURSOR = 6;
    public static final int N_RESIZE_CURSOR = 8;
    public static final int SE_RESIZE_CURSOR = 5;
    public static final int SW_RESIZE_CURSOR = 4;
    public static final int S_RESIZE_CURSOR = 9;
    public static final int TEXT_CURSOR = 2;
    public static final int WAIT_CURSOR = 3;
    public static final int W_RESIZE_CURSOR = 10;
    private static final NeoPlatformLogger log;
    private static final long serialVersionUID = 8028237497568985504L;
    private static final String systemCustomCursorDirPrefix;
    private static Properties systemCustomCursorProperties;
    private static final String systemCustomCursorPropertiesFile;
    private transient Object anchor;
    transient CursorDisposer disposer;
    protected String name;
    private transient long pData;
    int type;

    @Deprecated
    protected static Cursor[] predefined = new Cursor[14];
    private static final Cursor[] predefinedPrivate = new Cursor[14];
    static final String[][] cursorProperties = {new String[]{"AWT.DefaultCursor", "Default Cursor"}, new String[]{"AWT.CrosshairCursor", "Crosshair Cursor"}, new String[]{"AWT.TextCursor", "Text Cursor"}, new String[]{"AWT.WaitCursor", "Wait Cursor"}, new String[]{"AWT.SWResizeCursor", "Southwest Resize Cursor"}, new String[]{"AWT.SEResizeCursor", "Southeast Resize Cursor"}, new String[]{"AWT.NWResizeCursor", "Northwest Resize Cursor"}, new String[]{"AWT.NEResizeCursor", "Northeast Resize Cursor"}, new String[]{"AWT.NResizeCursor", "North Resize Cursor"}, new String[]{"AWT.SResizeCursor", "South Resize Cursor"}, new String[]{"AWT.WResizeCursor", "West Resize Cursor"}, new String[]{"AWT.EResizeCursor", "East Resize Cursor"}, new String[]{"AWT.HandCursor", "Hand Cursor"}, new String[]{"AWT.MoveCursor", "Move Cursor"}};
    private static final Hashtable<String, Cursor> systemCustomCursors = new Hashtable<>(1);

    /* loaded from: classes4.dex */
    public static class CursorDisposer implements DisposerRecord {
        volatile long pData;

        public CursorDisposer(long j) {
            this.pData = j;
        }

        @Override // sun.java2d.DisposerRecord
        public void dispose() {
            if (this.pData != 0) {
                Cursor.finalizeImpl(this.pData);
            }
        }
    }

    static {
        String initCursorDir = initCursorDir();
        systemCustomCursorDirPrefix = initCursorDir;
        systemCustomCursorPropertiesFile = initCursorDir + "cursors.properties";
        systemCustomCursorProperties = null;
        log = NeoPlatformLogger.getLogger("java.awt.Cursor");
        Toolkit.loadLibraries();
        if (!GraphicsEnvironment.isHeadless()) {
            initIDs();
        }
        AWTAccessor.setCursorAccessor(new AWTAccessor.CursorAccessor() { // from class: java.awt.Cursor.1
            public long getPData(Cursor cursor) {
                return cursor.pData;
            }

            public int getType(Cursor cursor) {
                return cursor.type;
            }

            public void setPData(Cursor cursor, long j) {
                cursor.pData = j;
            }
        });
    }

    @ConstructorProperties({"type"})
    public Cursor(int i) {
        this.type = 0;
        this.anchor = new Object();
        if (i >= 0 && i <= 13) {
            this.type = i;
            String[] strArr = cursorProperties[i];
            this.name = Toolkit.getProperty(strArr[0], strArr[1]);
            return;
        }
        throw new IllegalArgumentException("illegal cursor type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void finalizeImpl(long j);

    public static Cursor getDefaultCursor() {
        return getPredefinedCursor(0);
    }

    public static Cursor getPredefinedCursor(int i) {
        if (i < 0 || i > 13) {
            throw new IllegalArgumentException("illegal cursor type");
        }
        Cursor[] cursorArr = predefinedPrivate;
        Cursor cursor = cursorArr[i];
        if (cursor == null) {
            cursor = new Cursor(i);
            cursorArr[i] = cursor;
        }
        Cursor[] cursorArr2 = predefined;
        if (cursorArr2[i] == null) {
            cursorArr2[i] = cursor;
        }
        return cursor;
    }

    public static Cursor getSystemCustomCursor(String str) throws AWTException, HeadlessException {
        GraphicsEnvironment.checkHeadless();
        Hashtable<String, Cursor> hashtable = systemCustomCursors;
        Cursor cursor = hashtable.get(str);
        if (cursor == null) {
            synchronized (hashtable) {
                if (systemCustomCursorProperties == null) {
                    loadSystemCustomCursorProperties();
                }
            }
            String str2 = CursorDotPrefix + str;
            String str3 = str2 + DotFileSuffix;
            if (!systemCustomCursorProperties.containsKey(str3)) {
                NeoPlatformLogger neoPlatformLogger = log;
                if (!neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINER)) {
                    return null;
                }
                neoPlatformLogger.finer("Cursor.getSystemCustomCursor(" + str + ") returned null");
                return null;
            }
            final String property = systemCustomCursorProperties.getProperty(str3);
            final String property2 = systemCustomCursorProperties.getProperty(str2 + DotNameSuffix);
            if (property2 == null) {
                property2 = str;
            }
            String property3 = systemCustomCursorProperties.getProperty(str2 + DotHotspotSuffix);
            if (property3 == null) {
                throw new AWTException("no hotspot property defined for cursor: " + str);
            }
            StringTokenizer stringTokenizer = new StringTokenizer(property3, ",");
            if (stringTokenizer.countTokens() != 2) {
                throw new AWTException("failed to parse hotspot property for cursor: " + str);
            }
            try {
                final int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                final int parseInt2 = Integer.parseInt(stringTokenizer.nextToken());
                try {
                    cursor = (Cursor) AccessController.doPrivileged(new PrivilegedExceptionAction<Cursor>() { // from class: java.awt.Cursor.2
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.security.PrivilegedExceptionAction
                        public Cursor run() throws Exception {
                            Toolkit defaultToolkit = Toolkit.getDefaultToolkit();
                            return defaultToolkit.createCustomCursor(defaultToolkit.getImage(Cursor.systemCustomCursorDirPrefix + property), new Point(parseInt, parseInt2), property2);
                        }
                    });
                    if (cursor == null) {
                        NeoPlatformLogger neoPlatformLogger2 = log;
                        if (neoPlatformLogger2.isLoggable(NeoPlatformLogger.Level.FINER)) {
                            neoPlatformLogger2.finer("Cursor.getSystemCustomCursor(" + str + ") returned null");
                        }
                    } else {
                        hashtable.put(str, cursor);
                    }
                } catch (Exception e) {
                    throw new AWTException("Exception: " + e.getClass() + " " + e.getMessage() + " occurred while creating cursor " + str);
                }
            } catch (NumberFormatException unused) {
                throw new AWTException("failed to parse hotspot property for cursor: " + str);
            }
        }
        return cursor;
    }

    private static String initCursorDir() {
        String str = (String) AccessController.doPrivileged(new GetPropertyAction(SystemUtils.f107424e));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = File.separator;
        sb.append(str2);
        sb.append("lib");
        sb.append(str2);
        sb.append(MessageConst.KEY_IMAGES);
        sb.append(str2);
        sb.append("cursors");
        sb.append(str2);
        return sb.toString();
    }

    private static void initIDs() {
    }

    private static void loadSystemCustomCursorProperties() throws AWTException {
        synchronized (systemCustomCursors) {
            systemCustomCursorProperties = new Properties();
            try {
                AccessController.doPrivileged(new PrivilegedExceptionAction<Object>() { // from class: java.awt.Cursor.3
                    @Override // java.security.PrivilegedExceptionAction
                    public Object run() throws Exception {
                        FileInputStream fileInputStream;
                        Throwable th;
                        try {
                            fileInputStream = new FileInputStream(Cursor.systemCustomCursorPropertiesFile);
                            try {
                                Cursor.systemCustomCursorProperties.load(fileInputStream);
                                fileInputStream.close();
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            fileInputStream = null;
                            th = th3;
                        }
                    }
                });
            } catch (Exception e) {
                systemCustomCursorProperties = null;
                throw new AWTException("Exception: " + e.getClass() + " " + e.getMessage() + " occurred while loading: " + systemCustomCursorPropertiesFile);
            }
        }
    }

    private void setPData(long j) {
        this.pData = j;
        if (GraphicsEnvironment.isHeadless()) {
            return;
        }
        CursorDisposer cursorDisposer = this.disposer;
        if (cursorDisposer != null) {
            cursorDisposer.pData = j;
            return;
        }
        CursorDisposer cursorDisposer2 = new CursorDisposer(j);
        this.disposer = cursorDisposer2;
        if (this.anchor == null) {
            this.anchor = new Object();
        }
        Disposer.addRecord(this.anchor, cursorDisposer2);
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        return getClass().getName() + IteratorUtils.f104923a + getName() + IteratorUtils.f104924b;
    }

    public Cursor(String str) {
        this.anchor = new Object();
        this.type = -1;
        this.name = str;
    }
}
