package javax.imageio.plugins.tiff;

import com.sun.imageio.plugins.tiff.TIFFIFD;
import com.sun.imageio.plugins.tiff.TIFFImageMetadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes5.dex */
public class TIFFDirectory implements Cloneable {
    private static final int MAX_LOW_FIELD_TAG_NUM = 532;
    private TIFFTag parentTag;
    private List<TIFFTagSet> tagSets;
    private TIFFField[] lowFields = new TIFFField[StandardNames.XS_INTEGER];
    private int numLowFields = 0;
    private Map<Integer, TIFFField> highFields = new TreeMap();

    public TIFFDirectory(TIFFTagSet[] tIFFTagSetArr, TIFFTag tIFFTag) {
        if (tIFFTagSetArr == null) {
            throw new NullPointerException("tagSets == null!");
        }
        this.tagSets = new ArrayList(tIFFTagSetArr.length);
        for (TIFFTagSet tIFFTagSet : tIFFTagSetArr) {
            this.tagSets.add(tIFFTagSet);
        }
        this.parentTag = tIFFTag;
    }

    public static TIFFDirectory createFromMetadata(IIOMetadata iIOMetadata) throws IIOInvalidTreeException {
        TIFFImageMetadata tIFFImageMetadata;
        String str;
        if (iIOMetadata == null) {
            throw new NullPointerException("tiffImageMetadata == null");
        }
        if (iIOMetadata instanceof TIFFImageMetadata) {
            tIFFImageMetadata = (TIFFImageMetadata) iIOMetadata;
        } else {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(BaselineTIFFTagSet.getInstance());
            TIFFImageMetadata tIFFImageMetadata2 = new TIFFImageMetadata(arrayList);
            String nativeMetadataFormatName = iIOMetadata.getNativeMetadataFormatName();
            String str2 = TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME;
            if (!TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME.equals(nativeMetadataFormatName)) {
                String[] extraMetadataFormatNames = iIOMetadata.getExtraMetadataFormatNames();
                if (extraMetadataFormatNames != null) {
                    for (int i = 0; i < extraMetadataFormatNames.length; i++) {
                        if (TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME.equals(extraMetadataFormatNames[i])) {
                            str = extraMetadataFormatNames[i];
                            break;
                        }
                    }
                }
                str = null;
                str2 = str;
                if (str2 == null) {
                    if (!iIOMetadata.isStandardMetadataFormatSupported()) {
                        throw new IllegalArgumentException("Parameter does not support required metadata format!");
                    }
                    str2 = IIOMetadataFormatImpl.standardMetadataFormatName;
                }
            }
            tIFFImageMetadata2.setFromTree(str2, iIOMetadata.getAsTree(str2));
            tIFFImageMetadata = tIFFImageMetadata2;
        }
        return tIFFImageMetadata.getRootIFD();
    }

    public void addTIFFField(TIFFField tIFFField) {
        if (tIFFField == null) {
            throw new NullPointerException("f == null");
        }
        int tagNumber = tIFFField.getTagNumber();
        if (tagNumber < 0 || tagNumber > 532) {
            this.highFields.put(Integer.valueOf(tagNumber), tIFFField);
            return;
        }
        TIFFField[] tIFFFieldArr = this.lowFields;
        if (tIFFFieldArr[tagNumber] == null) {
            this.numLowFields++;
        }
        tIFFFieldArr[tagNumber] = tIFFField;
    }

    public void addTagSet(TIFFTagSet tIFFTagSet) {
        if (tIFFTagSet == null) {
            throw new NullPointerException("tagSet == null");
        }
        if (this.tagSets.contains(tIFFTagSet)) {
            return;
        }
        this.tagSets.add(tIFFTagSet);
    }

    public boolean containsTIFFField(int i) {
        return (i >= 0 && i <= 532 && this.lowFields[i] != null) || this.highFields.containsKey(Integer.valueOf(i));
    }

    public IIOMetadata getAsMetadata() {
        return new TIFFImageMetadata(TIFFIFD.getDirectoryAsIFD(this));
    }

    public int getNumTIFFFields() {
        return this.numLowFields + this.highFields.size();
    }

    public TIFFTag getParentTag() {
        return this.parentTag;
    }

    public TIFFField getTIFFField(int i) {
        return (i < 0 || i > 532) ? this.highFields.get(Integer.valueOf(i)) : this.lowFields[i];
    }

    public TIFFField[] getTIFFFields() {
        TIFFField[] tIFFFieldArr = new TIFFField[this.numLowFields + this.highFields.size()];
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i > 532) {
                break;
            }
            TIFFField tIFFField = this.lowFields[i];
            if (tIFFField != null) {
                int i3 = i2 + 1;
                tIFFFieldArr[i2] = tIFFField;
                if (i3 == this.numLowFields) {
                    i2 = i3;
                    break;
                }
                i2 = i3;
            }
            i++;
        }
        if (!this.highFields.isEmpty()) {
            Iterator<Integer> it2 = this.highFields.keySet().iterator();
            while (it2.hasNext()) {
                tIFFFieldArr[i2] = this.highFields.get(it2.next());
                i2++;
            }
        }
        return tIFFFieldArr;
    }

    public TIFFTag getTag(int i) {
        return TIFFIFD.getTag(i, this.tagSets);
    }

    public TIFFTagSet[] getTagSets() {
        List<TIFFTagSet> list = this.tagSets;
        return (TIFFTagSet[]) list.toArray(new TIFFTagSet[list.size()]);
    }

    public void removeTIFFField(int i) {
        if (i < 0 || i > 532) {
            this.highFields.remove(Integer.valueOf(i));
            return;
        }
        TIFFField[] tIFFFieldArr = this.lowFields;
        if (tIFFFieldArr[i] != null) {
            this.numLowFields--;
            tIFFFieldArr[i] = null;
        }
    }

    public void removeTIFFFields() {
        Arrays.fill(this.lowFields, (Object) null);
        this.numLowFields = 0;
        this.highFields.clear();
    }

    public void removeTagSet(TIFFTagSet tIFFTagSet) {
        if (tIFFTagSet == null) {
            throw new NullPointerException("tagSet == null");
        }
        if (this.tagSets.contains(tIFFTagSet)) {
            this.tagSets.remove(tIFFTagSet);
        }
    }

    public TIFFDirectory clone() throws CloneNotSupportedException {
        TIFFDirectory tIFFDirectory = (TIFFDirectory) super.clone();
        tIFFDirectory.tagSets = new ArrayList(this.tagSets);
        tIFFDirectory.parentTag = getParentTag();
        for (TIFFField tIFFField : getTIFFFields()) {
            tIFFDirectory.addTIFFField(tIFFField.clone());
        }
        return tIFFDirectory;
    }
}
