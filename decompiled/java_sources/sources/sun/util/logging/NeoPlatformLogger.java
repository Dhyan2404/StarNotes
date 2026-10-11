package sun.util.logging;

import java.backport.function.Supplier;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

/* loaded from: classes16.dex */
public class NeoPlatformLogger {
    public static final int LEVEL_ALL = 0;
    public static final int LEVEL_OFF = 8;
    private static final Map<String, WeakReference<NeoPlatformLogger>> loggers = new HashMap();
    private static final Level[] spi2platformLevelMapping = {Level.ALL, Level.FINER, Level.FINE, Level.INFO, Level.WARNING, Level.SEVERE, Level.ASSERT, Level.OFF};
    private final Bridge loggerProxy;

    /* loaded from: classes16.dex */
    public interface Bridge {
        String getName();

        boolean isEnabled();

        boolean isLoggable(Level level);

        void log(Level level, Supplier<String> supplier);

        void log(Level level, String str);

        void log(Level level, String str, Throwable th);

        void log(Level level, String str, Object... objArr);

        void log(Level level, Throwable th, Supplier<String> supplier);

        void logp(Level level, String str, String str2, Supplier<String> supplier);

        void logp(Level level, String str, String str2, String str3);

        void logp(Level level, String str, String str2, String str3, Throwable th);

        void logp(Level level, String str, String str2, String str3, Object... objArr);

        void logp(Level level, String str, String str2, Throwable th, Supplier<String> supplier);

        void logrb(Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Throwable th);

        void logrb(Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Object... objArr);

        void logrb(Level level, ResourceBundle resourceBundle, String str, Throwable th);

        void logrb(Level level, ResourceBundle resourceBundle, String str, Object... objArr);
    }

    /* loaded from: classes16.dex */
    public interface ConfigurableBridge {

        /* loaded from: classes16.dex */
        public static abstract class LoggerConfiguration {
            public abstract Level getPlatformLevel();

            public abstract void setPlatformLevel(Level level);
        }

        default LoggerConfiguration getLoggerConfiguration() {
            return null;
        }

        static LoggerConfiguration getLoggerConfiguration(Bridge bridge) {
            if (bridge instanceof ConfigurableBridge) {
                return ((ConfigurableBridge) bridge).getLoggerConfiguration();
            }
            return null;
        }
    }

    /* loaded from: classes16.dex */
    public enum Level {
        ALL(0),
        FINEST(2),
        FINER(2),
        FINE(2),
        CONFIG(3),
        INFO(4),
        WARNING(4),
        SEVERE(6),
        ASSERT(7),
        OFF(8);

        private static final int[] LEVEL_VALUES = {Integer.MIN_VALUE, 300, 400, 500, 700, 800, 900, 1000, Integer.MAX_VALUE};
        private static final int SEVERITY_ALL = Integer.MIN_VALUE;
        private static final int SEVERITY_CONFIG = 700;
        private static final int SEVERITY_FINE = 500;
        private static final int SEVERITY_FINER = 400;
        private static final int SEVERITY_FINEST = 300;
        private static final int SEVERITY_INFO = 800;
        private static final int SEVERITY_OFF = Integer.MAX_VALUE;
        private static final int SEVERITY_SEVERE = 1000;
        private static final int SEVERITY_WARNING = 900;
        final int systemLevel;

        Level(int i) {
            this.systemLevel = i;
        }

        public int intValue() {
            return LEVEL_VALUES[ordinal()];
        }

        public int systemLevel() {
            return this.systemLevel;
        }

        public static Level valueOf(int i) {
            if (i == Integer.MIN_VALUE) {
                return ALL;
            }
            if (i == 300) {
                return FINEST;
            }
            if (i == 400) {
                return FINER;
            }
            if (i == 500) {
                return FINE;
            }
            if (i == 700) {
                return CONFIG;
            }
            if (i == 800) {
                return INFO;
            }
            if (i == 900) {
                return WARNING;
            }
            if (i == 1000) {
                return SEVERE;
            }
            if (i != Integer.MAX_VALUE) {
                int binarySearch = Arrays.binarySearch(LEVEL_VALUES, 0, r0.length - 2, i);
                Level[] values = values();
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                return values[binarySearch];
            }
            return OFF;
        }
    }

    private NeoPlatformLogger(Bridge bridge) {
        this.loggerProxy = bridge;
    }

    public static synchronized NeoPlatformLogger getLogger(String str) {
        NeoPlatformLogger neoPlatformLogger;
        synchronized (NeoPlatformLogger.class) {
            Map<String, WeakReference<NeoPlatformLogger>> map = loggers;
            WeakReference<NeoPlatformLogger> weakReference = map.get(str);
            neoPlatformLogger = weakReference != null ? weakReference.get() : null;
            if (neoPlatformLogger == null) {
                neoPlatformLogger = new NeoPlatformLogger(new LoggerWrapper(str));
                map.put(str, new WeakReference<>(neoPlatformLogger));
            }
        }
        return neoPlatformLogger;
    }

    public static Level toPlatformLevel(int i) {
        if (i <= 2) {
            return Level.ALL;
        }
        for (Level level : spi2platformLevelMapping) {
            if (level.intValue() == i) {
                return level;
            }
        }
        return Level.OFF;
    }

    public void config(String str) {
        this.loggerProxy.log(Level.CONFIG, str, (Object[]) null);
    }

    public void fine(String str) {
        this.loggerProxy.log(Level.FINE, str, (Object[]) null);
    }

    public void finer(String str) {
        this.loggerProxy.log(Level.FINER, str, (Object[]) null);
    }

    public void finest(String str) {
        this.loggerProxy.log(Level.FINEST, str, (Object[]) null);
    }

    public String getName() {
        return this.loggerProxy.getName();
    }

    public void info(String str) {
        this.loggerProxy.log(Level.INFO, str, (Object[]) null);
    }

    public boolean isEnabled() {
        return this.loggerProxy.isEnabled();
    }

    public boolean isLoggable(Level level) {
        level.getClass();
        return this.loggerProxy.isLoggable(level);
    }

    public Level level() {
        ConfigurableBridge.LoggerConfiguration loggerConfiguration = ConfigurableBridge.getLoggerConfiguration(this.loggerProxy);
        if (loggerConfiguration == null) {
            return null;
        }
        return loggerConfiguration.getPlatformLevel();
    }

    @Deprecated
    public void setLevel(Level level) {
        ConfigurableBridge.LoggerConfiguration loggerConfiguration = ConfigurableBridge.getLoggerConfiguration(this.loggerProxy);
        if (loggerConfiguration != null) {
            loggerConfiguration.setPlatformLevel(level);
        }
    }

    public void severe(String str) {
        this.loggerProxy.log(Level.SEVERE, str, (Object[]) null);
    }

    public void warning(String str) {
        this.loggerProxy.log(Level.WARNING, str, (Object[]) null);
    }

    public void config(String str, Throwable th) {
        this.loggerProxy.log(Level.CONFIG, str, th);
    }

    public void fine(String str, Throwable th) {
        this.loggerProxy.log(Level.FINE, str, th);
    }

    public void finer(String str, Throwable th) {
        this.loggerProxy.log(Level.FINER, str, th);
    }

    public void finest(String str, Throwable th) {
        this.loggerProxy.log(Level.FINEST, str, th);
    }

    public void info(String str, Throwable th) {
        this.loggerProxy.log(Level.INFO, str, th);
    }

    public void severe(String str, Throwable th) {
        this.loggerProxy.log(Level.SEVERE, str, th);
    }

    public void warning(String str, Throwable th) {
        this.loggerProxy.log(Level.WARNING, str, th);
    }

    public void config(String str, Object... objArr) {
        this.loggerProxy.log(Level.CONFIG, str, objArr);
    }

    public void fine(String str, Object... objArr) {
        this.loggerProxy.log(Level.FINE, str, objArr);
    }

    public void finer(String str, Object... objArr) {
        this.loggerProxy.log(Level.FINER, str, objArr);
    }

    public void finest(String str, Object... objArr) {
        this.loggerProxy.log(Level.FINEST, str, objArr);
    }

    public void info(String str, Object... objArr) {
        this.loggerProxy.log(Level.INFO, str, objArr);
    }

    public void severe(String str, Object... objArr) {
        this.loggerProxy.log(Level.SEVERE, str, objArr);
    }

    public void warning(String str, Object... objArr) {
        this.loggerProxy.log(Level.WARNING, str, objArr);
    }
}
