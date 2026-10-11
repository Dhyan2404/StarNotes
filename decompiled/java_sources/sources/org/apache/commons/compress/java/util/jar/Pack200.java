package org.apache.commons.compress.java.util.jar;

import java.beans.PropertyChangeListener;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.SortedMap;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;
import java.util.jar.JarOutputStream;
import org.apache.commons.compress.harmony.archive.internal.nls.Messages;
import org.apache.commons.compress.java.util.jar.Pack200;

/* loaded from: classes12.dex */
public abstract class Pack200 {

    /* renamed from: a */
    public static final String f107293a = "java.util.jar.Pack200.Packer";

    /* renamed from: b */
    public static final String f107294b = "java.util.jar.Pack200.Unpacker";

    /* loaded from: classes12.dex */
    public interface Packer {
        public static final String CLASS_ATTRIBUTE_PFX = "pack.class.attribute.";
        public static final String CODE_ATTRIBUTE_PFX = "pack.code.attribute.";
        public static final String DEFLATE_HINT = "pack.deflate.hint";
        public static final String EFFORT = "pack.effort";
        public static final String ERROR = "error";
        public static final String FALSE = "false";
        public static final String FIELD_ATTRIBUTE_PFX = "pack.field.attribute.";
        public static final String KEEP = "keep";
        public static final String KEEP_FILE_ORDER = "pack.keep.file.order";
        public static final String LATEST = "latest";
        public static final String METHOD_ATTRIBUTE_PFX = "pack.method.attribute.";
        public static final String MODIFICATION_TIME = "pack.modification.time";
        public static final String PASS = "pass";
        public static final String PASS_FILE_PFX = "pack.pass.file.";
        public static final String PROGRESS = "pack.progress";
        public static final String SEGMENT_LIMIT = "pack.segment.limit";
        public static final String STRIP = "strip";
        public static final String TRUE = "true";
        public static final String UNKNOWN_ATTRIBUTE = "pack.unknown.attribute";

        void addPropertyChangeListener(PropertyChangeListener propertyChangeListener);

        void pack(JarFile jarFile, OutputStream outputStream) throws IOException;

        void pack(JarInputStream jarInputStream, OutputStream outputStream) throws IOException;

        SortedMap<String, String> properties();

        void removePropertyChangeListener(PropertyChangeListener propertyChangeListener);
    }

    /* loaded from: classes12.dex */
    public interface Unpacker {
        public static final String DEFLATE_HINT = "unpack.deflate.hint";
        public static final String FALSE = "false";
        public static final String KEEP = "keep";
        public static final String PROGRESS = "unpack.progress";
        public static final String TRUE = "true";

        void addPropertyChangeListener(PropertyChangeListener propertyChangeListener);

        SortedMap<String, String> properties();

        void removePropertyChangeListener(PropertyChangeListener propertyChangeListener);

        void unpack(File file, JarOutputStream jarOutputStream) throws IOException;

        void unpack(InputStream inputStream, JarOutputStream jarOutputStream) throws IOException;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m67154b(String str, String str2) {
        String property = System.getProperty(str, str2);
        try {
            return Pack200.class.getClassLoader().loadClass(property).newInstance();
        } catch (Exception e) {
            throw new Error(Messages.getString("archive.3E", property), e);
        }
    }

    /* renamed from: c */
    public static Object m67155c(final String str, final String str2) {
        return AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.klk
            @Override // java.security.PrivilegedAction
            public final Object run() {
                Object m67154b;
                m67154b = Pack200.m67154b(str, str2);
                return m67154b;
            }
        });
    }

    public static Packer newPacker() {
        return (Packer) m67155c(f107293a, "org.apache.commons.compress.harmony.pack200.Pack200PackerAdapter");
    }

    public static Unpacker newUnpacker() {
        return (Unpacker) m67155c(f107294b, "org.apache.commons.compress.harmony.unpack200.Pack200UnpackerAdapter");
    }
}
