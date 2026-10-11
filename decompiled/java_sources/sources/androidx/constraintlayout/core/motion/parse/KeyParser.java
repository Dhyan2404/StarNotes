package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;

/* loaded from: classes3.dex */
public class KeyParser {

    /* renamed from: androidx.constraintlayout.core.motion.parse.KeyParser$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0392a {
        int get(int i);
    }

    /* renamed from: androidx.constraintlayout.core.motion.parse.KeyParser$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC0393b {
        int get(String str);
    }

    /* renamed from: a */
    public static TypedBundle m1473a(String str, InterfaceC0393b interfaceC0393b, InterfaceC0392a interfaceC0392a) {
        TypedBundle typedBundle = new TypedBundle();
        try {
            CLObject parse = CLParser.parse(str);
            int size = parse.size();
            for (int i = 0; i < size; i++) {
                CLKey cLKey = (CLKey) parse.get(i);
                String content = cLKey.content();
                CLElement value = cLKey.getValue();
                int i2 = interfaceC0393b.get(content);
                if (i2 == -1) {
                    System.err.println("unknown type " + content);
                } else {
                    int i3 = interfaceC0392a.get(i2);
                    if (i3 == 1) {
                        typedBundle.add(i2, parse.getBoolean(i));
                    } else if (i3 == 2) {
                        typedBundle.add(i2, value.getInt());
                        System.out.println("parse " + content + " INT_MASK > " + value.getInt());
                    } else if (i3 == 4) {
                        typedBundle.add(i2, value.getFloat());
                        System.out.println("parse " + content + " FLOAT_MASK > " + value.getFloat());
                    } else if (i3 == 8) {
                        typedBundle.add(i2, value.content());
                        System.out.println("parse " + content + " STRING_MASK > " + value.content());
                    }
                }
            }
        } catch (CLParsingException e) {
            e.printStackTrace();
        }
        return typedBundle;
    }

    public static void main(String[] strArr) {
        parseAttributes("{frame:22,\ntarget:'widget1',\neasing:'easeIn',\ncurveFit:'spline',\nprogress:0.3,\nalpha:0.2,\nelevation:0.7,\nrotationZ:23,\nrotationX:25.0,\nrotationY:27.0,\npivotX:15,\npivotY:17,\npivotTarget:'32',\npathRotate:23,\nscaleX:0.5,\nscaleY:0.7,\ntranslationX:5,\ntranslationY:7,\ntranslationZ:11,\n}");
    }

    public static TypedBundle parseAttributes(String str) {
        return m1473a(str, new InterfaceC0393b() { // from class: com.sunia.HTREnginev2.zti
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.InterfaceC0393b
            public final int get(String str2) {
                return TypedValues.AttributesType.getId(str2);
            }
        }, new InterfaceC0392a() { // from class: com.sunia.HTREnginev2.aui
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.InterfaceC0392a
            public final int get(int i) {
                return TypedValues.AttributesType.getType(i);
            }
        });
    }
}
