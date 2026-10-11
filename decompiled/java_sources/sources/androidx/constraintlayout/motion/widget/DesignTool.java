package androidx.constraintlayout.motion.widget;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintSet;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.bui;
import com.sunia.HTREnginev2.n9l;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class DesignTool implements n9l {

    /* renamed from: g */
    public static final boolean f3519g = false;

    /* renamed from: h */
    public static final String f3520h = "DesignTool";

    /* renamed from: i */
    public static final HashMap<Pair<Integer, Integer>, String> f3521i;

    /* renamed from: j */
    public static final HashMap<String, String> f3522j;

    /* renamed from: a */
    public final MotionLayout f3523a;

    /* renamed from: b */
    public MotionScene f3524b;

    /* renamed from: c */
    public String f3525c = null;

    /* renamed from: d */
    public String f3526d = null;

    /* renamed from: e */
    public int f3527e = -1;

    /* renamed from: f */
    public int f3528f = -1;

    static {
        HashMap<Pair<Integer, Integer>, String> hashMap = new HashMap<>();
        f3521i = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        f3522j = hashMap2;
        hashMap.put(Pair.create(4, 4), "layout_constraintBottom_toBottomOf");
        hashMap.put(Pair.create(4, 3), "layout_constraintBottom_toTopOf");
        hashMap.put(Pair.create(3, 4), "layout_constraintTop_toBottomOf");
        hashMap.put(Pair.create(3, 3), "layout_constraintTop_toTopOf");
        hashMap.put(Pair.create(6, 6), "layout_constraintStart_toStartOf");
        hashMap.put(Pair.create(6, 7), "layout_constraintStart_toEndOf");
        hashMap.put(Pair.create(7, 6), "layout_constraintEnd_toStartOf");
        hashMap.put(Pair.create(7, 7), "layout_constraintEnd_toEndOf");
        hashMap.put(Pair.create(1, 1), "layout_constraintLeft_toLeftOf");
        hashMap.put(Pair.create(1, 2), "layout_constraintLeft_toRightOf");
        hashMap.put(Pair.create(2, 2), "layout_constraintRight_toRightOf");
        hashMap.put(Pair.create(2, 1), "layout_constraintRight_toLeftOf");
        hashMap.put(Pair.create(5, 5), "layout_constraintBaseline_toBaselineOf");
        hashMap2.put("layout_constraintBottom_toBottomOf", "layout_marginBottom");
        hashMap2.put("layout_constraintBottom_toTopOf", "layout_marginBottom");
        hashMap2.put("layout_constraintTop_toBottomOf", "layout_marginTop");
        hashMap2.put("layout_constraintTop_toTopOf", "layout_marginTop");
        hashMap2.put("layout_constraintStart_toStartOf", "layout_marginStart");
        hashMap2.put("layout_constraintStart_toEndOf", "layout_marginStart");
        hashMap2.put("layout_constraintEnd_toStartOf", "layout_marginEnd");
        hashMap2.put("layout_constraintEnd_toEndOf", "layout_marginEnd");
        hashMap2.put("layout_constraintLeft_toLeftOf", "layout_marginLeft");
        hashMap2.put("layout_constraintLeft_toRightOf", "layout_marginLeft");
        hashMap2.put("layout_constraintRight_toRightOf", "layout_marginRight");
        hashMap2.put("layout_constraintRight_toLeftOf", "layout_marginRight");
    }

    public DesignTool(MotionLayout motionLayout) {
        this.f3523a = motionLayout;
    }

    /* renamed from: a */
    public static void m1705a(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes, int from, int to) {
        String str = f3521i.get(Pair.create(Integer.valueOf(from), Integer.valueOf(to)));
        String str2 = attributes.get(str);
        if (str2 != null) {
            String str3 = f3522j.get(str);
            int m1706b = str3 != null ? m1706b(dpi, attributes.get(str3)) : 0;
            set.connect(view.getId(), from, Integer.parseInt(str2), to, m1706b);
        }
    }

    /* renamed from: b */
    public static int m1706b(int dpi, String value) {
        int indexOf;
        if (value == null || (indexOf = value.indexOf(100)) == -1) {
            return 0;
        }
        return (int) ((Integer.valueOf(value.substring(0, indexOf)).intValue() * dpi) / 160.0f);
    }

    /* renamed from: c */
    public static void m1707c(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes) {
        String str = attributes.get("layout_editor_absoluteX");
        if (str != null) {
            set.setEditorAbsoluteX(view.getId(), m1706b(dpi, str));
        }
        String str2 = attributes.get("layout_editor_absoluteY");
        if (str2 != null) {
            set.setEditorAbsoluteY(view.getId(), m1706b(dpi, str2));
        }
    }

    /* renamed from: d */
    public static void m1708d(ConstraintSet set, View view, HashMap<String, String> attributes, int type) {
        String str = attributes.get(type == 1 ? "layout_constraintVertical_bias" : "layout_constraintHorizontal_bias");
        if (str != null) {
            if (type == 0) {
                set.setHorizontalBias(view.getId(), Float.parseFloat(str));
            } else if (type == 1) {
                set.setVerticalBias(view.getId(), Float.parseFloat(str));
            }
        }
    }

    /* renamed from: e */
    public static void m1709e(int dpi, ConstraintSet set, View view, HashMap<String, String> attributes, int type) {
        String str = attributes.get(type == 1 ? "layout_height" : "layout_width");
        if (str != null) {
            int m1706b = !str.equalsIgnoreCase("wrap_content") ? m1706b(dpi, str) : -2;
            if (type == 0) {
                set.constrainWidth(view.getId(), m1706b);
            } else {
                set.constrainHeight(view.getId(), m1706b);
            }
        }
    }

    @Override // com.sunia.HTREnginev2.n9l
    public int designAccess(int cmd, String type, Object viewObject, float[] in, int inLength, float[] out, int outLength) {
        MotionController motionController;
        View view = (View) viewObject;
        if (cmd != 0) {
            MotionLayout motionLayout = this.f3523a;
            if (motionLayout.f3853v0 == null || view == null || (motionController = motionLayout.f3795F0.get(view)) == null) {
                return -1;
            }
        } else {
            motionController = null;
        }
        if (cmd == 0) {
            return 1;
        }
        if (cmd == 1) {
            int duration = this.f3523a.f3853v0.getDuration() / 16;
            motionController.m1858e(out, duration);
            return duration;
        }
        if (cmd == 2) {
            int duration2 = this.f3523a.f3853v0.getDuration() / 16;
            motionController.m1857d(out, null);
            return duration2;
        }
        if (cmd != 3) {
            return -1;
        }
        int duration3 = this.f3523a.f3853v0.getDuration() / 16;
        return motionController.m1863j(type, out, outLength);
    }

    public void disableAutoTransition(boolean disable) {
        this.f3523a.m1911R(disable);
    }

    public void dumpConstraintSet(String set) {
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            motionLayout.f3853v0 = this.f3524b;
        }
        int m1922c0 = motionLayout.m1922c0(set);
        System.out.println(" dumping  " + set + " (" + m1922c0 + MotionUtils.f31762d);
        try {
            this.f3523a.f3853v0.m1987h(m1922c0).dump(this.f3523a.f3853v0, new int[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getAnimationKeyFrames(Object view, float[] key) {
        MotionScene motionScene = this.f3523a.f3853v0;
        if (motionScene == null) {
            return -1;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.f3523a.f3795F0.get(view);
        if (motionController == null) {
            return 0;
        }
        motionController.m1857d(key, null);
        return duration;
    }

    public int getAnimationPath(Object view, float[] path, int len) {
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            return -1;
        }
        MotionController motionController = motionLayout.f3795F0.get(view);
        if (motionController == null) {
            return 0;
        }
        motionController.m1858e(path, len);
        return len;
    }

    public void getAnimationRectangles(Object view, float[] path) {
        MotionScene motionScene = this.f3523a.f3853v0;
        if (motionScene == null) {
            return;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.f3523a.f3795F0.get(view);
        if (motionController == null) {
            return;
        }
        motionController.m1860g(path, duration);
    }

    public String getEndState() {
        int endState = this.f3523a.getEndState();
        if (this.f3528f == endState) {
            return this.f3526d;
        }
        String m1918Y = this.f3523a.m1918Y(endState);
        if (m1918Y != null) {
            this.f3526d = m1918Y;
            this.f3528f = endState;
        }
        return m1918Y;
    }

    public int getKeyFrameInfo(Object view, int type, int[] info) {
        MotionController motionController = this.f3523a.f3795F0.get((View) view);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFrameInfo(type, info);
    }

    @Override // com.sunia.HTREnginev2.n9l
    public float getKeyFramePosition(Object view, int type, float x, float y) {
        MotionController motionController;
        if ((view instanceof View) && (motionController = this.f3523a.f3795F0.get((View) view)) != null) {
            return motionController.m1866n(type, x, y);
        }
        return 0.0f;
    }

    public int getKeyFramePositions(Object view, int[] type, float[] pos) {
        MotionController motionController = this.f3523a.f3795F0.get((View) view);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFramePositions(type, pos);
    }

    public Object getKeyframe(int type, int target, int position) {
        MotionLayout motionLayout = this.f3523a;
        MotionScene motionScene = motionLayout.f3853v0;
        if (motionScene == null) {
            return null;
        }
        return motionScene.m1992m(motionLayout.getContext(), type, target, position);
    }

    @Override // com.sunia.HTREnginev2.n9l
    public Object getKeyframeAtLocation(Object viewObject, float x, float y) {
        MotionController motionController;
        View view = (View) viewObject;
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            return -1;
        }
        if (view == null || (motionController = motionLayout.f3795F0.get(view)) == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        return motionController.m1868p(viewGroup.getWidth(), viewGroup.getHeight(), x, y);
    }

    @Override // com.sunia.HTREnginev2.n9l
    public Boolean getPositionKeyframe(Object keyFrame, Object view, float x, float y, String[] attribute, float[] value) {
        if (!(keyFrame instanceof bui)) {
            return Boolean.FALSE;
        }
        View view2 = (View) view;
        this.f3523a.f3795F0.get(view2).m1874v(view2, (bui) keyFrame, x, y, attribute, value);
        this.f3523a.rebuildScene();
        this.f3523a.f3811N0 = true;
        return Boolean.TRUE;
    }

    public float getProgress() {
        return this.f3523a.getProgress();
    }

    public String getStartState() {
        int startState = this.f3523a.getStartState();
        if (this.f3527e == startState) {
            return this.f3525c;
        }
        String m1918Y = this.f3523a.m1918Y(startState);
        if (m1918Y != null) {
            this.f3525c = m1918Y;
            this.f3527e = startState;
        }
        return this.f3523a.m1918Y(startState);
    }

    public String getState() {
        if (this.f3525c != null && this.f3526d != null) {
            float progress = getProgress();
            if (progress <= 0.01f) {
                return this.f3525c;
            }
            if (progress >= 0.99f) {
                return this.f3526d;
            }
        }
        return this.f3525c;
    }

    @Override // com.sunia.HTREnginev2.n9l
    public long getTransitionTimeMs() {
        return this.f3523a.getTransitionTimeMs();
    }

    public boolean isInTransition() {
        return (this.f3525c == null || this.f3526d == null) ? false : true;
    }

    @Override // com.sunia.HTREnginev2.n9l
    public void setAttributes(int dpi, String constraintSetId, Object opaqueView, Object opaqueAttributes) {
        View view = (View) opaqueView;
        HashMap hashMap = (HashMap) opaqueAttributes;
        int m1922c0 = this.f3523a.m1922c0(constraintSetId);
        ConstraintSet m1987h = this.f3523a.f3853v0.m1987h(m1922c0);
        if (m1987h == null) {
            return;
        }
        m1987h.clear(view.getId());
        m1709e(dpi, m1987h, view, hashMap, 0);
        m1709e(dpi, m1987h, view, hashMap, 1);
        m1705a(dpi, m1987h, view, hashMap, 6, 6);
        m1705a(dpi, m1987h, view, hashMap, 6, 7);
        m1705a(dpi, m1987h, view, hashMap, 7, 7);
        m1705a(dpi, m1987h, view, hashMap, 7, 6);
        m1705a(dpi, m1987h, view, hashMap, 1, 1);
        m1705a(dpi, m1987h, view, hashMap, 1, 2);
        m1705a(dpi, m1987h, view, hashMap, 2, 2);
        m1705a(dpi, m1987h, view, hashMap, 2, 1);
        m1705a(dpi, m1987h, view, hashMap, 3, 3);
        m1705a(dpi, m1987h, view, hashMap, 3, 4);
        m1705a(dpi, m1987h, view, hashMap, 4, 3);
        m1705a(dpi, m1987h, view, hashMap, 4, 4);
        m1705a(dpi, m1987h, view, hashMap, 5, 5);
        m1708d(m1987h, view, hashMap, 0);
        m1708d(m1987h, view, hashMap, 1);
        m1707c(dpi, m1987h, view, hashMap);
        this.f3523a.updateState(m1922c0, m1987h);
        this.f3523a.requestLayout();
    }

    @Override // com.sunia.HTREnginev2.n9l
    public void setKeyFrame(Object view, int position, String name, Object value) {
        MotionScene motionScene = this.f3523a.f3853v0;
        if (motionScene != null) {
            motionScene.setKeyframe((View) view, position, name, value);
            MotionLayout motionLayout = this.f3523a;
            motionLayout.f3807L0 = position / 100.0f;
            motionLayout.f3803J0 = 0.0f;
            motionLayout.rebuildScene();
            this.f3523a.m1913T(true);
        }
    }

    @Override // com.sunia.HTREnginev2.n9l
    public boolean setKeyFramePosition(Object view, int position, int type, float x, float y) {
        if (!(view instanceof View)) {
            return false;
        }
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 != null) {
            MotionController motionController = motionLayout.f3795F0.get(view);
            MotionLayout motionLayout2 = this.f3523a;
            int i = (int) (motionLayout2.f3801I0 * 100.0f);
            if (motionController != null) {
                View view2 = (View) view;
                if (motionLayout2.f3853v0.m1970B(view2, i)) {
                    float m1866n = motionController.m1866n(2, x, y);
                    float m1866n2 = motionController.m1866n(5, x, y);
                    this.f3523a.f3853v0.setKeyframe(view2, i, "motion:percentX", Float.valueOf(m1866n));
                    this.f3523a.f3853v0.setKeyframe(view2, i, "motion:percentY", Float.valueOf(m1866n2));
                    this.f3523a.rebuildScene();
                    this.f3523a.m1913T(true);
                    this.f3523a.invalidate();
                    return true;
                }
            }
        }
        return false;
    }

    public void setKeyframe(Object keyFrame, String tag, Object value) {
        if (keyFrame instanceof Key) {
            ((Key) keyFrame).setValue(tag, value);
            this.f3523a.rebuildScene();
            this.f3523a.f3811N0 = true;
        }
    }

    public void setState(String id) {
        if (id == null) {
            id = "motion_base";
        }
        if (this.f3525c == id) {
            return;
        }
        this.f3525c = id;
        this.f3526d = null;
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            motionLayout.f3853v0 = this.f3524b;
        }
        int m1922c0 = motionLayout.m1922c0(id);
        this.f3527e = m1922c0;
        if (m1922c0 != 0) {
            if (m1922c0 == this.f3523a.getStartState()) {
                this.f3523a.setProgress(0.0f);
            } else if (m1922c0 == this.f3523a.getEndState()) {
                this.f3523a.setProgress(1.0f);
            } else {
                this.f3523a.transitionToState(m1922c0);
                this.f3523a.setProgress(1.0f);
            }
        }
        this.f3523a.requestLayout();
    }

    @Override // com.sunia.HTREnginev2.n9l
    public void setToolPosition(float position) {
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            motionLayout.f3853v0 = this.f3524b;
        }
        motionLayout.setProgress(position);
        this.f3523a.m1913T(true);
        this.f3523a.requestLayout();
        this.f3523a.invalidate();
    }

    public void setTransition(String start, String end) {
        MotionLayout motionLayout = this.f3523a;
        if (motionLayout.f3853v0 == null) {
            motionLayout.f3853v0 = this.f3524b;
        }
        int m1922c0 = motionLayout.m1922c0(start);
        int m1922c02 = this.f3523a.m1922c0(end);
        this.f3523a.setTransition(m1922c0, m1922c02);
        this.f3527e = m1922c0;
        this.f3528f = m1922c02;
        this.f3525c = start;
        this.f3526d = end;
    }

    public void setViewDebug(Object view, int debugMode) {
        MotionController motionController;
        if ((view instanceof View) && (motionController = this.f3523a.f3795F0.get(view)) != null) {
            motionController.setDrawPath(debugMode);
            this.f3523a.invalidate();
        }
    }

    public Object getKeyframe(Object view, int type, int position) {
        if (this.f3523a.f3853v0 == null) {
            return null;
        }
        int id = ((View) view).getId();
        MotionLayout motionLayout = this.f3523a;
        return motionLayout.f3853v0.m1992m(motionLayout.getContext(), type, id, position);
    }
}
