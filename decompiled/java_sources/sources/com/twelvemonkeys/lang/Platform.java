package com.twelvemonkeys.lang;

import androidx.core.text.util.LocalePreferences;
import java.util.Properties;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes10.dex */
public final class Platform {

    /* renamed from: d */
    public static final Platform f94326d = new Platform();

    /* renamed from: a */
    public final OperatingSystem f94327a;

    /* renamed from: b */
    public final String f94328b;

    /* renamed from: c */
    public final Architecture f94329c;

    /* loaded from: classes10.dex */
    public enum Architecture {
        X86("x86"),
        I386("i386"),
        I686("i686"),
        PPC("ppc"),
        SPARC("sparc"),
        Unknown(System.getProperty("os.arch"));

        final String name;

        Architecture(String str) {
            this.name = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    /* loaded from: classes10.dex */
    public enum OperatingSystem {
        Windows(SystemUtils.f107420a, "win"),
        Linux("Linux", "lnx"),
        Solaris("Solaris", LocalePreferences.FirstDayOfWeek.SUNDAY),
        MacOS("Mac OS", "osx"),
        Unknown(System.getProperty("os.name"), null);


        /* renamed from: id */
        final String f94330id;
        final String name;

        OperatingSystem(String str, String str2) {
            this.name = str;
            this.f94330id = str2 == null ? str.toLowerCase() : str2;
        }

        public String getName() {
            return this.name;
        }

        /* renamed from: id */
        public String m60725id() {
            return this.f94330id;
        }

        @Override // java.lang.Enum
        public String toString() {
            return String.format("%s (%s)", this.f94330id, this.name);
        }
    }

    public Platform() {
        this(System.getProperties());
    }

    /* renamed from: a */
    public static Architecture m60722a(OperatingSystem operatingSystem, String str) {
        if (str == null) {
            throw new IllegalStateException("System property \"os.arch\" == null");
        }
        String lowerCase = str.toLowerCase();
        if (operatingSystem == OperatingSystem.Windows && (lowerCase.startsWith("x86") || lowerCase.startsWith("i386"))) {
            return Architecture.X86;
        }
        if (operatingSystem == OperatingSystem.Linux) {
            if (lowerCase.startsWith("x86") || lowerCase.startsWith("i386")) {
                return Architecture.I386;
            }
            if (lowerCase.startsWith("i686")) {
                return Architecture.I686;
            }
            if (lowerCase.startsWith("power") || lowerCase.startsWith("ppc")) {
                return Architecture.PPC;
            }
        } else if (operatingSystem == OperatingSystem.MacOS) {
            if (lowerCase.startsWith("power") || lowerCase.startsWith("ppc")) {
                return Architecture.PPC;
            }
            if (lowerCase.startsWith("x86")) {
                return Architecture.X86;
            }
            if (lowerCase.startsWith("i386")) {
                return Architecture.X86;
            }
        } else if (operatingSystem == OperatingSystem.Solaris) {
            if (lowerCase.startsWith("sparc")) {
                return Architecture.SPARC;
            }
            if (lowerCase.startsWith("x86")) {
                return Architecture.X86;
            }
        }
        return Architecture.Unknown;
    }

    public static Architecture arch() {
        return f94326d.f94329c;
    }

    /* renamed from: b */
    public static OperatingSystem m60723b(String str) {
        if (str == null) {
            throw new IllegalStateException("System property \"os.name\" == null");
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.startsWith("windows") ? OperatingSystem.Windows : lowerCase.startsWith("linux") ? OperatingSystem.Linux : (lowerCase.startsWith("mac os") || lowerCase.startsWith("darwin")) ? OperatingSystem.MacOS : (lowerCase.startsWith("solaris") || lowerCase.startsWith("sunos")) ? OperatingSystem.Solaris : OperatingSystem.Unknown;
    }

    public static Platform get() {
        return f94326d;
    }

    /* renamed from: os */
    public static OperatingSystem m60724os() {
        return f94326d.f94327a;
    }

    public static String version() {
        return f94326d.f94328b;
    }

    public Architecture getArchitecture() {
        return this.f94329c;
    }

    public OperatingSystem getOS() {
        return this.f94327a;
    }

    public String getVersion() {
        return this.f94328b;
    }

    public Platform(Properties properties) {
        OperatingSystem m60723b = m60723b(properties.getProperty("os.name"));
        this.f94327a = m60723b;
        this.f94328b = properties.getProperty("os.version");
        this.f94329c = m60722a(m60723b, properties.getProperty("os.arch"));
    }
}
