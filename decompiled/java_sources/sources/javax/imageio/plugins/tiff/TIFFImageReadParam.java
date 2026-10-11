package javax.imageio.plugins.tiff;

import java.util.ArrayList;
import java.util.List;
import javax.imageio.ImageReadParam;

/* loaded from: classes5.dex */
public final class TIFFImageReadParam extends ImageReadParam {

    /* renamed from: a */
    public final List<TIFFTagSet> f97944a = new ArrayList(4);

    /* renamed from: b */
    public boolean f97945b = false;

    public TIFFImageReadParam() {
        addAllowedTagSet(BaselineTIFFTagSet.getInstance());
        addAllowedTagSet(FaxTIFFTagSet.getInstance());
        addAllowedTagSet(ExifParentTIFFTagSet.getInstance());
        addAllowedTagSet(GeoTIFFTagSet.getInstance());
    }

    public void addAllowedTagSet(TIFFTagSet tIFFTagSet) {
        if (tIFFTagSet == null) {
            throw new IllegalArgumentException("tagSet == null!");
        }
        if (this.f97944a.contains(tIFFTagSet)) {
            return;
        }
        this.f97944a.add(tIFFTagSet);
    }

    public List<TIFFTagSet> getAllowedTagSets() {
        return this.f97944a;
    }

    public boolean getReadUnknownTags() {
        return this.f97945b;
    }

    public void removeAllowedTagSet(TIFFTagSet tIFFTagSet) {
        if (tIFFTagSet == null) {
            throw new IllegalArgumentException("tagSet == null!");
        }
        this.f97944a.remove(tIFFTagSet);
    }

    public void setReadUnknownTags(boolean z) {
        this.f97945b = z;
    }
}
