package androidx.constraintlayout.core.parser;

import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        String json = toJSON();
        if (i2 > 0 || json.length() + i >= CLElement.MAX_LINE) {
            sb.append("[\n");
            Iterator<CLElement> it2 = this.f3078g.iterator();
            boolean z = true;
            while (it2.hasNext()) {
                CLElement next = it2.next();
                if (z) {
                    z = false;
                } else {
                    sb.append(",\n");
                }
                addIndent(sb, CLElement.BASE_INDENT + i);
                sb.append(next.toFormattedJSON(CLElement.BASE_INDENT + i, i2 - 1));
            }
            sb.append("\n");
            addIndent(sb, i);
            sb.append(IteratorUtils.f104924b);
        } else {
            sb.append(json);
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + IteratorUtils.f104923a);
        boolean z = true;
        for (int i = 0; i < this.f3078g.size(); i++) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(this.f3078g.get(i).toJSON());
        }
        return ((Object) sb) + IteratorUtils.f104924b;
    }
}
