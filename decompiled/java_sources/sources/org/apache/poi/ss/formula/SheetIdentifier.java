package org.apache.poi.ss.formula;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class SheetIdentifier {
    private final String _bookName;
    private final NameIdentifier _sheetIdentifier;

    public SheetIdentifier(String str, NameIdentifier nameIdentifier) {
        this._bookName = str;
        this._sheetIdentifier = nameIdentifier;
    }

    public void asFormulaString(StringBuilder sb) {
        if (this._bookName != null) {
            sb.append(" [");
            sb.append(this._sheetIdentifier.getName());
            sb.append(IteratorUtils.f104924b);
        }
        if (this._sheetIdentifier.isQuoted()) {
            sb.append(Chars.QUOTE);
            sb.append(this._sheetIdentifier.getName());
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            return;
        }
        sb.append(this._sheetIdentifier.getName());
    }

    public String getBookName() {
        return this._bookName;
    }

    public NameIdentifier getSheetIdentifier() {
        return this._sheetIdentifier;
    }

    public String toString() {
        return getClass().getName() + " [" + asFormulaString() + IteratorUtils.f104924b;
    }

    public String asFormulaString() {
        StringBuilder sb = new StringBuilder(32);
        asFormulaString(sb);
        return sb.toString();
    }
}
