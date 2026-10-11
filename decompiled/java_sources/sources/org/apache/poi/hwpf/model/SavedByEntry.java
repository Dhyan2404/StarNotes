package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class SavedByEntry {
    private String saveLocation;
    private String userName;

    public SavedByEntry(String str, String str2) {
        this.userName = str;
        this.saveLocation = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SavedByEntry)) {
            return false;
        }
        SavedByEntry savedByEntry = (SavedByEntry) obj;
        return savedByEntry.userName.equals(this.userName) && savedByEntry.saveLocation.equals(this.saveLocation);
    }

    public String getSaveLocation() {
        return this.saveLocation;
    }

    public String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        return Objects.hash(this.userName, this.saveLocation);
    }

    public String toString() {
        return "SavedByEntry[userName=" + getUserName() + ",saveLocation=" + getSaveLocation() + IteratorUtils.f104924b;
    }
}
