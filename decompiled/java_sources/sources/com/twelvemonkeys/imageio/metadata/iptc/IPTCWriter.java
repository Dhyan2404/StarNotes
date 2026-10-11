package com.twelvemonkeys.imageio.metadata.iptc;

import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.MetadataWriter;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public final class IPTCWriter extends MetadataWriter {
    /* renamed from: a */
    public final void m60478a(ImageOutputStream imageOutputStream, Object obj) throws IOException {
        if (obj instanceof String) {
            byte[] bytes = ((String) obj).getBytes(StandardCharsets.UTF_8);
            imageOutputStream.writeShort(bytes.length);
            imageOutputStream.write(bytes);
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            imageOutputStream.writeShort(bArr.length);
            imageOutputStream.write(bArr);
        } else if (obj instanceof Integer) {
            imageOutputStream.writeShort(2);
            imageOutputStream.writeShort(((Integer) obj).intValue());
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataWriter
    public boolean write(Directory directory, ImageOutputStream imageOutputStream) throws IOException {
        Validate.notNull(directory, "directory");
        Validate.notNull(imageOutputStream, "stream");
        Iterator<Entry> it2 = directory.iterator();
        while (true) {
            if (!it2.hasNext()) {
                return false;
            }
            Entry next = it2.next();
            int intValue = ((Integer) next.getIdentifier()).intValue();
            Object value = next.getValue();
            if (IPTC.Tags.m60473a((short) intValue)) {
                for (Object obj : (Object[]) value) {
                    imageOutputStream.write(28);
                    imageOutputStream.writeShort(intValue);
                    m60478a(imageOutputStream, obj);
                }
            } else {
                imageOutputStream.write(28);
                imageOutputStream.writeShort(intValue);
                m60478a(imageOutputStream, value);
            }
        }
    }
}
