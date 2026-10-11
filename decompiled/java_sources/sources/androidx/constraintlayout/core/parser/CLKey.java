package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.KeyFrames;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class CLKey extends CLContainer {

    /* renamed from: h */
    public static ArrayList<String> f3081h;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f3081h = arrayList;
        arrayList.add("ConstraintSets");
        f3081h.add("Variables");
        f3081h.add("Generate");
        f3081h.add(TypedValues.TransitionType.NAME);
        f3081h.add(KeyFrames.f3619e);
        f3081h.add("KeyAttributes");
        f3081h.add("KeyPositions");
        f3081h.add("KeyCycles");
    }

    public CLKey(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }

    public String getName() {
        return content();
    }

    public CLElement getValue() {
        if (this.f3078g.size() > 0) {
            return this.f3078g.get(0);
        }
        return null;
    }

    public void set(CLElement cLElement) {
        if (this.f3078g.size() > 0) {
            this.f3078g.set(0, cLElement);
        } else {
            this.f3078g.add(cLElement);
        }
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder(getDebugName());
        addIndent(sb, i);
        String content = content();
        if (this.f3078g.size() <= 0) {
            return content + ": <> ";
        }
        sb.append(content);
        sb.append(": ");
        if (f3081h.contains(content)) {
            i2 = 3;
        }
        if (i2 > 0) {
            sb.append(this.f3078g.get(0).toFormattedJSON(i, i2 - 1));
        } else {
            String json = this.f3078g.get(0).toJSON();
            if (json.length() + i < CLElement.MAX_LINE) {
                sb.append(json);
            } else {
                sb.append(this.f3078g.get(0).toFormattedJSON(i, i2 - 1));
            }
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (this.f3078g.size() <= 0) {
            return getDebugName() + content() + ": <> ";
        }
        return getDebugName() + content() + ": " + this.f3078g.get(0).toJSON();
    }

    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }
}
