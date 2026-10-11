package androidx.constraintlayout.core.parser;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes3.dex */
public class CLString extends CLElement {
    public CLString(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLString(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i);
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        sb.append(content());
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        return CloudStorageConstants.SINGLE_QUOTES + content() + CloudStorageConstants.SINGLE_QUOTES;
    }
}
