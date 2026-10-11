package org.apache.logging.log4j;

import java.io.Serializable;
import java.util.Collection;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.logging.log4j.spi.StandardLevel;
import org.apache.logging.log4j.util.Strings;

/* loaded from: classes12.dex */
public final class Level implements Comparable<Level>, Serializable {
    public static final String CATEGORY = "Level";
    private static final long serialVersionUID = 1581082;
    private final int intLevel;
    private final String name;
    private final StandardLevel standardLevel;
    private static final ConcurrentMap<String, Level> LEVELS = new ConcurrentHashMap();
    public static final Level OFF = new Level("OFF", StandardLevel.OFF.intLevel());
    public static final Level FATAL = new Level("FATAL", StandardLevel.FATAL.intLevel());
    public static final Level ERROR = new Level("ERROR", StandardLevel.ERROR.intLevel());
    public static final Level WARN = new Level("WARN", StandardLevel.WARN.intLevel());
    public static final Level INFO = new Level("INFO", StandardLevel.INFO.intLevel());
    public static final Level DEBUG = new Level("DEBUG", StandardLevel.DEBUG.intLevel());
    public static final Level TRACE = new Level("TRACE", StandardLevel.TRACE.intLevel());
    public static final Level ALL = new Level("ALL", StandardLevel.ALL.intLevel());

    private Level(final String name, final int intLevel) {
        if (Strings.isEmpty(name)) {
            throw new IllegalArgumentException("Illegal null or empty Level name.");
        }
        if (intLevel < 0) {
            throw new IllegalArgumentException("Illegal Level int less than zero.");
        }
        this.name = name;
        this.intLevel = intLevel;
        this.standardLevel = StandardLevel.getStandardLevel(intLevel);
        if (LEVELS.putIfAbsent(name, this) == null) {
            return;
        }
        throw new IllegalStateException("Level " + name + " has already been defined.");
    }

    public static Level forName(final String name, final int intValue) {
        Level level = LEVELS.get(name);
        if (level != null) {
            return level;
        }
        try {
            return new Level(name, intValue);
        } catch (IllegalStateException unused) {
            return LEVELS.get(name);
        }
    }

    public static Level getLevel(final String name) {
        return LEVELS.get(name);
    }

    public static Level toLevel(final String sArg) {
        return toLevel(sArg, DEBUG);
    }

    private static String toUpperCase(final String name) {
        return name.toUpperCase(Locale.ENGLISH);
    }

    public static Level valueOf(final String name) {
        Objects.requireNonNull(name, "No level name given.");
        String upperCase = toUpperCase(name.trim());
        Level level = LEVELS.get(upperCase);
        if (level != null) {
            return level;
        }
        throw new IllegalArgumentException("Unknown level constant [" + upperCase + "].");
    }

    public static Level[] values() {
        Collection<Level> values = LEVELS.values();
        return (Level[]) values.toArray(new Level[values.size()]);
    }

    public boolean equals(final Object other) {
        return (other instanceof Level) && other == this;
    }

    public Class<Level> getDeclaringClass() {
        return Level.class;
    }

    public StandardLevel getStandardLevel() {
        return this.standardLevel;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public int intLevel() {
        return this.intLevel;
    }

    public boolean isInRange(final Level minLevel, final Level maxLevel) {
        int i = this.intLevel;
        return i >= minLevel.intLevel && i <= maxLevel.intLevel;
    }

    public boolean isLessSpecificThan(final Level level) {
        return this.intLevel >= level.intLevel;
    }

    public boolean isMoreSpecificThan(final Level level) {
        return this.intLevel <= level.intLevel;
    }

    public String name() {
        return this.name;
    }

    public Object readResolve() {
        return valueOf(this.name);
    }

    public String toString() {
        return this.name;
    }

    public static Level toLevel(final String name, final Level defaultLevel) {
        Level level;
        return (name == null || (level = LEVELS.get(toUpperCase(name.trim()))) == null) ? defaultLevel : level;
    }

    public Level clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    @Override // java.lang.Comparable
    public int compareTo(final Level other) {
        int i = this.intLevel;
        int i2 = other.intLevel;
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static <T extends Enum<T>> T valueOf(Class<T> cls, String str) {
        return (T) Enum.valueOf(cls, str);
    }
}
