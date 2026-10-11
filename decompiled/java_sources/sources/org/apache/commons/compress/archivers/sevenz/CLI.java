package org.apache.commons.compress.archivers.sevenz;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.IOException;

/* loaded from: classes12.dex */
public class CLI {

    /* loaded from: classes12.dex */
    public enum Mode {
        LIST("Analysing") { // from class: org.apache.commons.compress.archivers.sevenz.CLI.Mode.1
            private String getContentMethods(SevenZArchiveEntry sevenZArchiveEntry) {
                StringBuilder sb = new StringBuilder();
                boolean z = true;
                for (SevenZMethodConfiguration sevenZMethodConfiguration : sevenZArchiveEntry.getContentMethods()) {
                    if (!z) {
                        sb.append(", ");
                    }
                    sb.append(sevenZMethodConfiguration.getMethod());
                    if (sevenZMethodConfiguration.getOptions() != null) {
                        sb.append(MotionUtils.f31761c);
                        sb.append(sevenZMethodConfiguration.getOptions());
                        sb.append(MotionUtils.f31762d);
                    }
                    z = false;
                }
                return sb.toString();
            }

            @Override // org.apache.commons.compress.archivers.sevenz.CLI.Mode
            public void takeAction(SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) {
                System.out.print(sevenZArchiveEntry.getName());
                if (sevenZArchiveEntry.isDirectory()) {
                    System.out.print(" dir");
                } else {
                    System.out.print(" " + sevenZArchiveEntry.m66203d() + "/" + sevenZArchiveEntry.getSize());
                }
                if (sevenZArchiveEntry.getHasLastModifiedDate()) {
                    System.out.print(" " + sevenZArchiveEntry.getLastModifiedDate());
                } else {
                    System.out.print(" no last modified date");
                }
                if (sevenZArchiveEntry.isDirectory()) {
                    System.out.println();
                    return;
                }
                System.out.println(" " + getContentMethods(sevenZArchiveEntry));
            }
        };

        private final String message;

        public String getMessage() {
            return this.message;
        }

        public abstract void takeAction(SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) throws IOException;

        Mode(String str) {
            this.message = str;
        }
    }

    /* renamed from: a */
    public static Mode m66195a(String[] strArr) {
        return strArr.length < 2 ? Mode.LIST : (Mode) Enum.valueOf(Mode.class, strArr[1].toUpperCase());
    }

    /* renamed from: b */
    public static void m66196b() {
        System.out.println("Parameters: archive-name [list]");
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            m66196b();
            return;
        }
        Mode m66195a = m66195a(strArr);
        System.out.println(m66195a.getMessage() + " " + strArr[0]);
        File file = new File(strArr[0]);
        if (!file.isFile()) {
            System.err.println(file + " doesn't exist or is a directory");
        }
        SevenZFile sevenZFile = new SevenZFile(file);
        while (true) {
            try {
                SevenZArchiveEntry nextEntry = sevenZFile.getNextEntry();
                if (nextEntry == null) {
                    sevenZFile.close();
                    return;
                }
                m66195a.takeAction(sevenZFile, nextEntry);
            } finally {
            }
        }
    }
}
