package org.apache.poi.ss.formula;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class SheetRangeIdentifier extends SheetIdentifier {
    private final NameIdentifier _lastSheetIdentifier;

    public SheetRangeIdentifier(String str, NameIdentifier nameIdentifier, NameIdentifier nameIdentifier2) {
        super(str, nameIdentifier);
        this._lastSheetIdentifier = nameIdentifier2;
    }

    @Override // org.apache.poi.ss.formula.SheetIdentifier
    public void asFormulaString(StringBuilder sb) {
        super.asFormulaString(sb);
        sb.append(':');
        if (!this._lastSheetIdentifier.isQuoted()) {
            sb.append(this._lastSheetIdentifier.getName());
            return;
        }
        sb.append(Chars.QUOTE);
        sb.append(this._lastSheetIdentifier.getName());
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
    }

    public NameIdentifier getFirstSheetIdentifier() {
        return super.getSheetIdentifier();
    }

    public NameIdentifier getLastSheetIdentifier() {
        return this._lastSheetIdentifier;
    }
}
