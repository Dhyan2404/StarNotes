package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class KeyFrames {
    public static final int UNSET = -1;

    /* renamed from: b */
    public static final String f3616b = "CustomMethod";

    /* renamed from: c */
    public static final String f3617c = "CustomAttribute";

    /* renamed from: d */
    public static HashMap<String, Constructor<? extends Key>> f3618d = null;

    /* renamed from: e */
    public static final String f3619e = "KeyFrames";

    /* renamed from: a */
    public HashMap<Integer, ArrayList<Key>> f3620a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> hashMap = new HashMap<>();
        f3618d = hashMap;
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            f3618d.put("KeyPosition", KeyPosition.class.getConstructor(new Class[0]));
            f3618d.put("KeyCycle", KeyCycle.class.getConstructor(new Class[0]));
            f3618d.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            f3618d.put("KeyTrigger", KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e(f3619e, "unable to load", e);
        }
    }

    public KeyFrames() {
    }

    /* renamed from: a */
    public static String m1787a(int viewId, Context context) {
        return context.getResources().getResourceEntryName(viewId);
    }

    public void addAllFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.f3620a.get(-1);
        if (arrayList != null) {
            motionController.m1854a(arrayList);
        }
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.f3620a.get(Integer.valueOf(motionController.f3753c));
        if (arrayList != null) {
            motionController.m1854a(arrayList);
        }
        ArrayList<Key> arrayList2 = this.f3620a.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Key next = it2.next();
                if (next.m1710a(((ConstraintLayout.LayoutParams) motionController.f3752b.getLayoutParams()).constraintTag)) {
                    motionController.addKey(next);
                }
            }
        }
    }

    public void addKey(Key key) {
        if (!this.f3620a.containsKey(Integer.valueOf(key.f3530b))) {
            this.f3620a.put(Integer.valueOf(key.f3530b), new ArrayList<>());
        }
        ArrayList<Key> arrayList = this.f3620a.get(Integer.valueOf(key.f3530b));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    public ArrayList<Key> getKeyFramesForView(int id) {
        return this.f3620a.get(Integer.valueOf(id));
    }

    public Set<Integer> getKeys() {
        return this.f3620a.keySet();
    }

    public KeyFrames(Context context, XmlPullParser parser) {
        Exception e;
        Key key;
        Constructor<? extends Key> constructor;
        HashMap<String, ConstraintAttribute> hashMap;
        HashMap<String, ConstraintAttribute> hashMap2;
        try {
            int eventType = parser.getEventType();
            Key key2 = null;
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && "KeyFrameSet".equals(parser.getName())) {
                        return;
                    }
                } else {
                    String name = parser.getName();
                    if (f3618d.containsKey(name)) {
                        try {
                            constructor = f3618d.get(name);
                        } catch (Exception e2) {
                            Key key3 = key2;
                            e = e2;
                            key = key3;
                        }
                        if (constructor != null) {
                            key = constructor.newInstance(new Object[0]);
                            try {
                                key.load(context, Xml.asAttributeSet(parser));
                                addKey(key);
                            } catch (Exception e3) {
                                e = e3;
                                Log.e(f3619e, "unable to create ", e);
                                key2 = key;
                                eventType = parser.next();
                            }
                            key2 = key;
                        } else {
                            throw new NullPointerException("Keymaker for " + name + " not found");
                            break;
                        }
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (key2 != null && (hashMap2 = key2.f3532d) != null) {
                            ConstraintAttribute.parse(context, parser, hashMap2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && key2 != null && (hashMap = key2.f3532d) != null) {
                        ConstraintAttribute.parse(context, parser, hashMap);
                    }
                }
                eventType = parser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }
}
