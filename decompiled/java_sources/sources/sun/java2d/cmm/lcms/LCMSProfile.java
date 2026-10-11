package sun.java2d.cmm.lcms;

import java.util.Arrays;
import java.util.HashMap;
import sun.java2d.cmm.Profile;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public final class LCMSProfile extends Profile {
    private final Object disposerReferent;
    private final TagCache tagCache;

    /* loaded from: classes16.dex */
    public static class TagCache {
        final LCMSProfile profile;
        private HashMap<Integer, TagData> tags = new HashMap<>();

        public TagCache(LCMSProfile lCMSProfile) {
            this.profile = lCMSProfile;
        }

        public void clear() {
            this.tags.clear();
        }

        public TagData getTag(int i) {
            byte[] tagNative;
            TagData tagData = this.tags.get(Integer.valueOf(i));
            if (tagData != null || (tagNative = LCMS.getTagNative(this.profile.getNativePtr(), i)) == null) {
                return tagData;
            }
            TagData tagData2 = new TagData(i, tagNative);
            this.tags.put(Integer.valueOf(i), tagData2);
            return tagData2;
        }
    }

    /* loaded from: classes16.dex */
    public static class TagData {
        private byte[] data;
        private int signature;

        public TagData(int i, byte[] bArr) {
            this.signature = i;
            this.data = bArr;
        }

        public void copyDataTo(byte[] bArr) {
            byte[] bArr2 = this.data;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        }

        public byte[] getData() {
            byte[] bArr = this.data;
            return Arrays.copyOf(bArr, bArr.length);
        }

        public int getSignature() {
            return this.signature;
        }

        public int getSize() {
            return this.data.length;
        }
    }

    public LCMSProfile(long j, Object obj) {
        super(j);
        this.disposerReferent = obj;
        this.tagCache = new TagCache(this);
    }

    public void clearTagCache() {
        this.tagCache.clear();
    }

    public long getLcmsPtr() {
        return getNativePtr();
    }

    public TagData getTag(int i) {
        return this.tagCache.getTag(i);
    }
}
