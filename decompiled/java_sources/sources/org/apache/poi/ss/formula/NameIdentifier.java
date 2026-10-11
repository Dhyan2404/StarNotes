package org.apache.poi.ss.formula;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class NameIdentifier {
    private final boolean _isQuoted;
    private final String _name;

    public NameIdentifier(String str, boolean z) {
        this._name = str;
        this._isQuoted = z;
    }

    public String getName() {
        return this._name;
    }

    public boolean isQuoted() {
        return this._isQuoted;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(getClass().getName());
        sb.append(" [");
        if (this._isQuoted) {
            sb.append(Chars.QUOTE);
            sb.append(this._name);
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
        } else {
            sb.append(this._name);
        }
        sb.append(']');
        return sb.toString();
    }
}
