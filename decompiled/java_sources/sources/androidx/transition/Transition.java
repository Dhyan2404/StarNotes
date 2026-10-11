package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.util.Consumer;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.transition.Transition;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.lnn;
import com.sunia.HTREnginev2.q0o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* loaded from: classes3.dex */
public abstract class Transition implements Cloneable {

    /* renamed from: E0 */
    public static final String f10621E0 = "Transition";

    /* renamed from: G0 */
    public static final boolean f10623G0 = false;

    /* renamed from: H0 */
    public static final int f10624H0 = 1;

    /* renamed from: I0 */
    public static final int f10625I0 = 4;

    /* renamed from: J0 */
    public static final String f10626J0 = "instance";

    /* renamed from: K0 */
    public static final String f10627K0 = "name";

    /* renamed from: L0 */
    public static final String f10628L0 = "id";

    /* renamed from: M0 */
    public static final String f10629M0 = "itemId";
    public static final int MATCH_ID = 3;
    public static final int MATCH_INSTANCE = 1;
    public static final int MATCH_ITEM_ID = 4;
    public static final int MATCH_NAME = 2;

    /* renamed from: B0 */
    public long f10634B0;

    /* renamed from: C0 */
    public C1502g f10635C0;

    /* renamed from: D0 */
    public long f10636D0;

    /* renamed from: x */
    public ArrayList<TransitionValues> f10665x;

    /* renamed from: x0 */
    public TransitionPropagation f10666x0;

    /* renamed from: y */
    public ArrayList<TransitionValues> f10667y;

    /* renamed from: y0 */
    public EpicenterCallback f10668y0;

    /* renamed from: z */
    public TransitionListener[] f10669z;

    /* renamed from: z0 */
    public ArrayMap<String, String> f10670z0;

    /* renamed from: F0 */
    public static final Animator[] f10622F0 = new Animator[0];

    /* renamed from: N0 */
    public static final int[] f10630N0 = {2, 1, 3, 4};

    /* renamed from: O0 */
    public static final PathMotion f10631O0 = new C1496a();

    /* renamed from: P0 */
    public static ThreadLocal<ArrayMap<Animator, C1499d>> f10632P0 = new ThreadLocal<>();

    /* renamed from: e */
    public String f10640e = getClass().getName();

    /* renamed from: f */
    public long f10641f = -1;

    /* renamed from: g */
    public long f10642g = -1;

    /* renamed from: h */
    public TimeInterpolator f10643h = null;

    /* renamed from: i */
    public ArrayList<Integer> f10644i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<View> f10645j = new ArrayList<>();

    /* renamed from: k */
    public ArrayList<String> f10646k = null;

    /* renamed from: l */
    public ArrayList<Class<?>> f10648l = null;

    /* renamed from: m */
    public ArrayList<Integer> f10649m = null;

    /* renamed from: n */
    public ArrayList<View> f10650n = null;

    /* renamed from: o */
    public ArrayList<Class<?>> f10651o = null;

    /* renamed from: p */
    public ArrayList<String> f10652p = null;

    /* renamed from: q */
    public ArrayList<Integer> f10653q = null;

    /* renamed from: r */
    public ArrayList<View> f10655r = null;

    /* renamed from: s */
    public ArrayList<Class<?>> f10656s = null;

    /* renamed from: t */
    public lnn f10657t = new lnn();

    /* renamed from: u */
    public lnn f10659u = new lnn();

    /* renamed from: v */
    public TransitionSet f10661v = null;

    /* renamed from: w */
    public int[] f10663w = f10630N0;

    /* renamed from: J */
    public boolean f10637J = false;

    /* renamed from: O */
    public ArrayList<Animator> f10638O = new ArrayList<>();

    /* renamed from: Q */
    public Animator[] f10639Q = f10622F0;

    /* renamed from: k0 */
    public int f10647k0 = 0;

    /* renamed from: q0 */
    public boolean f10654q0 = false;

    /* renamed from: t0 */
    public boolean f10658t0 = false;

    /* renamed from: u0 */
    public Transition f10660u0 = null;

    /* renamed from: v0 */
    public ArrayList<TransitionListener> f10662v0 = null;

    /* renamed from: w0 */
    public ArrayList<Animator> f10664w0 = new ArrayList<>();

    /* renamed from: A0 */
    public PathMotion f10633A0 = f10631O0;

    /* loaded from: classes3.dex */
    public static abstract class EpicenterCallback {
        @Nullable
        public abstract Rect onGetEpicenter(@NonNull Transition transition);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface MatchOrder {
    }

    /* loaded from: classes3.dex */
    public interface TransitionListener {
        void onTransitionCancel(@NonNull Transition transition);

        void onTransitionEnd(@NonNull Transition transition);

        default void onTransitionEnd(@NonNull Transition transition, boolean z) {
            onTransitionEnd(transition);
        }

        void onTransitionPause(@NonNull Transition transition);

        void onTransitionResume(@NonNull Transition transition);

        void onTransitionStart(@NonNull Transition transition);

        default void onTransitionStart(@NonNull Transition transition, boolean z) {
            onTransitionStart(transition);
        }
    }

    /* renamed from: androidx.transition.Transition$a */
    /* loaded from: classes3.dex */
    public class C1496a extends PathMotion {
        @Override // androidx.transition.PathMotion
        @NonNull
        public Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes3.dex */
    public class C1497b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ ArrayMap f10671e;

        public C1497b(ArrayMap arrayMap) {
            this.f10671e = arrayMap;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f10671e.remove(animator);
            Transition.this.f10638O.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Transition.this.f10638O.add(animator);
        }
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes3.dex */
    public class C1498c extends AnimatorListenerAdapter {
        public C1498c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.end();
            animator.removeListener(this);
        }
    }

    /* renamed from: androidx.transition.Transition$d */
    /* loaded from: classes3.dex */
    public static class C1499d {

        /* renamed from: a */
        public View f10674a;

        /* renamed from: b */
        public String f10675b;

        /* renamed from: c */
        public TransitionValues f10676c;

        /* renamed from: d */
        public WindowId f10677d;

        /* renamed from: e */
        public Transition f10678e;

        /* renamed from: f */
        public Animator f10679f;

        public C1499d(View view, String str, Transition transition, WindowId windowId, TransitionValues transitionValues, Animator animator) {
            this.f10674a = view;
            this.f10675b = str;
            this.f10676c = transitionValues;
            this.f10677d = windowId;
            this.f10678e = transition;
            this.f10679f = animator;
        }
    }

    /* renamed from: androidx.transition.Transition$e */
    /* loaded from: classes3.dex */
    public static class C1500e {
        /* renamed from: a */
        public static <T> ArrayList<T> m6609a(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t)) {
                arrayList.add(t);
            }
            return arrayList;
        }

        /* renamed from: b */
        public static <T> ArrayList<T> m6610b(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.transition.Transition$f */
    /* loaded from: classes3.dex */
    public static class C1501f {
        @DoNotInline
        /* renamed from: a */
        public static long m6611a(Animator animator) {
            return animator.getTotalDuration();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m6612b(Animator animator, long j) {
            ((AnimatorSet) animator).setCurrentPlayTime(j);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.transition.Transition$g */
    /* loaded from: classes3.dex */
    public class C1502g extends TransitionListenerAdapter implements TransitionSeekController, DynamicAnimation.OnAnimationUpdateListener {

        /* renamed from: h */
        public boolean f10683h;

        /* renamed from: i */
        public boolean f10684i;

        /* renamed from: j */
        public SpringAnimation f10685j;

        /* renamed from: m */
        public Runnable f10688m;

        /* renamed from: e */
        public long f10680e = -1;

        /* renamed from: f */
        public ArrayList<Consumer<TransitionSeekController>> f10681f = null;

        /* renamed from: g */
        public ArrayList<Consumer<TransitionSeekController>> f10682g = null;

        /* renamed from: k */
        public Consumer<TransitionSeekController>[] f10686k = null;

        /* renamed from: l */
        public final q0o f10687l = new q0o();

        public C1502g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m6614e(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            if (z) {
                return;
            }
            if (!(f < 1.0f)) {
                Transition.this.m6584D(InterfaceC1503h.f10691b, false);
                return;
            }
            long durationMillis = getDurationMillis();
            Transition transitionAt = ((TransitionSet) Transition.this).getTransitionAt(0);
            Transition transition = transitionAt.f10660u0;
            transitionAt.f10660u0 = null;
            Transition.this.mo6589J(-1L, this.f10680e);
            Transition.this.mo6589J(durationMillis, -1L);
            this.f10680e = durationMillis;
            Runnable runnable = this.f10688m;
            if (runnable != null) {
                runnable.run();
            }
            Transition.this.f10664w0.clear();
            if (transition != null) {
                transition.m6584D(InterfaceC1503h.f10691b, true);
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void addOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
            if (this.f10682g == null) {
                this.f10682g = new ArrayList<>();
            }
            this.f10682g.add(consumer);
        }

        @Override // androidx.transition.TransitionSeekController
        public void addOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
            if (isReady()) {
                consumer.accept(this);
                return;
            }
            if (this.f10681f == null) {
                this.f10681f = new ArrayList<>();
            }
            this.f10681f.add(consumer);
        }

        @Override // androidx.transition.TransitionSeekController
        public void animateToEnd() {
            m6616c();
            this.f10685j.animateToFinalPosition((float) (getDurationMillis() + 1));
        }

        @Override // androidx.transition.TransitionSeekController
        public void animateToStart(@NonNull Runnable runnable) {
            this.f10688m = runnable;
            m6616c();
            this.f10685j.animateToFinalPosition(0.0f);
        }

        /* renamed from: b */
        public final void m6615b() {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.f10682g;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            int size = this.f10682g.size();
            if (this.f10686k == null) {
                this.f10686k = new Consumer[size];
            }
            Consumer<TransitionSeekController>[] consumerArr = (Consumer[]) this.f10682g.toArray(this.f10686k);
            this.f10686k = null;
            for (int i = 0; i < size; i++) {
                consumerArr[i].accept(this);
                consumerArr[i] = null;
            }
            this.f10686k = consumerArr;
        }

        /* renamed from: c */
        public final void m6616c() {
            if (this.f10685j != null) {
                return;
            }
            this.f10687l.m56568a(AnimationUtils.currentAnimationTimeMillis(), (float) this.f10680e);
            this.f10685j = new SpringAnimation(new FloatValueHolder());
            SpringForce springForce = new SpringForce();
            springForce.setDampingRatio(1.0f);
            springForce.setStiffness(200.0f);
            this.f10685j.setSpring(springForce);
            this.f10685j.setStartValue((float) this.f10680e);
            this.f10685j.addUpdateListener(this);
            this.f10685j.setStartVelocity(this.f10687l.m56569b());
            this.f10685j.setMaxValue((float) (getDurationMillis() + 1));
            this.f10685j.setMinValue(-1.0f);
            this.f10685j.setMinimumVisibleChange(4.0f);
            this.f10685j.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.sunia.HTREnginev2.ymn
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    Transition.C1502g.this.m6614e(dynamicAnimation, z, f, f2);
                }
            });
        }

        /* renamed from: d */
        public void m6617d() {
            long j = getDurationMillis() == 0 ? 1L : 0L;
            Transition.this.mo6589J(j, this.f10680e);
            this.f10680e = j;
        }

        /* renamed from: f */
        public void m6618f() {
            this.f10683h = true;
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.f10681f;
            if (arrayList != null) {
                this.f10681f = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).accept(this);
                }
            }
            m6615b();
        }

        @Override // androidx.transition.TransitionSeekController
        public float getCurrentFraction() {
            return ((float) getCurrentPlayTimeMillis()) / ((float) getDurationMillis());
        }

        @Override // androidx.transition.TransitionSeekController
        public long getCurrentPlayTimeMillis() {
            return Math.min(getDurationMillis(), Math.max(0L, this.f10680e));
        }

        @Override // androidx.transition.TransitionSeekController
        public long getDurationMillis() {
            return Transition.this.m6603s();
        }

        @Override // androidx.transition.TransitionSeekController
        public boolean isReady() {
            return this.f10683h;
        }

        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
        public void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
            long max = Math.max(-1L, Math.min(getDurationMillis() + 1, Math.round(f)));
            Transition.this.mo6589J(max, this.f10680e);
            this.f10680e = max;
            m6615b();
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.f10684i = true;
        }

        @Override // androidx.transition.TransitionSeekController
        public void removeOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.f10682g;
            if (arrayList != null) {
                arrayList.remove(consumer);
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void removeOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.f10681f;
            if (arrayList != null) {
                arrayList.remove(consumer);
                if (this.f10681f.isEmpty()) {
                    this.f10681f = null;
                }
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void setCurrentFraction(float f) {
            if (this.f10685j != null) {
                throw new IllegalStateException("setCurrentFraction() called after animation has been started");
            }
            setCurrentPlayTimeMillis(f * ((float) getDurationMillis()));
        }

        @Override // androidx.transition.TransitionSeekController
        public void setCurrentPlayTimeMillis(long j) {
            if (this.f10685j != null) {
                throw new IllegalStateException("setCurrentPlayTimeMillis() called after animation has been started");
            }
            if (j == this.f10680e || !isReady()) {
                return;
            }
            if (!this.f10684i) {
                if (j != 0 || this.f10680e <= 0) {
                    long durationMillis = getDurationMillis();
                    if (j == durationMillis && this.f10680e < durationMillis) {
                        j = durationMillis + 1;
                    }
                } else {
                    j = -1;
                }
                long j2 = this.f10680e;
                if (j != j2) {
                    Transition.this.mo6589J(j, j2);
                    this.f10680e = j;
                }
            }
            m6615b();
            this.f10687l.m56568a(AnimationUtils.currentAnimationTimeMillis(), (float) j);
        }
    }

    /* renamed from: androidx.transition.Transition$h */
    /* loaded from: classes3.dex */
    public interface InterfaceC1503h {

        /* renamed from: a */
        public static final InterfaceC1503h f10690a = new InterfaceC1503h() { // from class: com.sunia.HTREnginev2.zmn
            @Override // androidx.transition.Transition.InterfaceC1503h
            /* renamed from: d */
            public final void mo6625d(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                transitionListener.onTransitionStart(transition, z);
            }
        };

        /* renamed from: b */
        public static final InterfaceC1503h f10691b = new InterfaceC1503h() { // from class: com.sunia.HTREnginev2.ann
            @Override // androidx.transition.Transition.InterfaceC1503h
            /* renamed from: d */
            public final void mo6625d(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                transitionListener.onTransitionEnd(transition, z);
            }
        };

        /* renamed from: c */
        public static final InterfaceC1503h f10692c = new InterfaceC1503h() { // from class: com.sunia.HTREnginev2.bnn
            @Override // androidx.transition.Transition.InterfaceC1503h
            /* renamed from: d */
            public final void mo6625d(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                transitionListener.onTransitionCancel(transition);
            }
        };

        /* renamed from: d */
        public static final InterfaceC1503h f10693d = new InterfaceC1503h() { // from class: com.sunia.HTREnginev2.cnn
            @Override // androidx.transition.Transition.InterfaceC1503h
            /* renamed from: d */
            public final void mo6625d(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                transitionListener.onTransitionPause(transition);
            }
        };

        /* renamed from: e */
        public static final InterfaceC1503h f10694e = new InterfaceC1503h() { // from class: com.sunia.HTREnginev2.dnn
            @Override // androidx.transition.Transition.InterfaceC1503h
            /* renamed from: d */
            public final void mo6625d(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                transitionListener.onTransitionResume(transition);
            }
        };

        /* renamed from: d */
        void mo6625d(@NonNull TransitionListener transitionListener, @NonNull Transition transition, boolean z);
    }

    public Transition() {
    }

    /* renamed from: E */
    public static int[] m6572E(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if (f10626J0.equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if (f10629M0.equalsIgnoreCase(trim)) {
                iArr[i] = 4;
            } else {
                if (!trim.isEmpty()) {
                    throw new InflateException("Unknown match type in matchOrder: '" + trim + CloudStorageConstants.SINGLE_QUOTES);
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            }
            i++;
        }
        return iArr;
    }

    /* renamed from: d */
    public static void m6575d(lnn lnnVar, View view, TransitionValues transitionValues) {
        lnnVar.f76690a.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (lnnVar.f76691b.indexOfKey(id) >= 0) {
                lnnVar.f76691b.put(id, null);
            } else {
                lnnVar.f76691b.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (lnnVar.f76693d.containsKey(transitionName)) {
                lnnVar.f76693d.put(transitionName, null);
            } else {
                lnnVar.f76693d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (lnnVar.f76692c.indexOfKey(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    lnnVar.f76692c.put(itemIdAtPosition, view);
                    return;
                }
                View view2 = lnnVar.f76692c.get(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    lnnVar.f76692c.put(itemIdAtPosition, null);
                }
            }
        }
    }

    /* renamed from: e */
    public static boolean m6576e(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public static <T> ArrayList<T> m6577m(ArrayList<T> arrayList, T t, boolean z) {
        return t != null ? z ? C1500e.m6609a(arrayList, t) : C1500e.m6610b(arrayList, t) : arrayList;
    }

    /* renamed from: r */
    public static ArrayMap<Animator, C1499d> m6578r() {
        ArrayMap<Animator, C1499d> arrayMap = f10632P0.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<Animator, C1499d> arrayMap2 = new ArrayMap<>();
        f10632P0.set(arrayMap2);
        return arrayMap2;
    }

    /* renamed from: u */
    public static boolean m6579u(int i) {
        return i >= 1 && i <= 4;
    }

    /* renamed from: w */
    public static boolean m6580w(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    /* renamed from: A */
    public final void m6581A(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i = 0; i < size; i++) {
            View valueAt = arrayMap3.valueAt(i);
            if (valueAt != null && m6605v(valueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i))) != null && m6605v(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f10665x.add(transitionValues);
                    this.f10667y.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: B */
    public final void m6582B(lnn lnnVar, lnn lnnVar2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(lnnVar.f76690a);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(lnnVar2.f76690a);
        int i = 0;
        while (true) {
            int[] iArr = this.f10663w;
            if (i >= iArr.length) {
                m6591c(arrayMap, arrayMap2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                m6607y(arrayMap, arrayMap2);
            } else if (i2 == 2) {
                m6581A(arrayMap, arrayMap2, lnnVar.f76693d, lnnVar2.f76693d);
            } else if (i2 == 3) {
                m6606x(arrayMap, arrayMap2, lnnVar.f76691b, lnnVar2.f76691b);
            } else if (i2 == 4) {
                m6608z(arrayMap, arrayMap2, lnnVar.f76692c, lnnVar2.f76692c);
            }
            i++;
        }
    }

    /* renamed from: C */
    public final void m6583C(Transition transition, InterfaceC1503h interfaceC1503h, boolean z) {
        Transition transition2 = this.f10660u0;
        if (transition2 != null) {
            transition2.m6583C(transition, interfaceC1503h, z);
        }
        ArrayList<TransitionListener> arrayList = this.f10662v0;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f10662v0.size();
        TransitionListener[] transitionListenerArr = this.f10669z;
        if (transitionListenerArr == null) {
            transitionListenerArr = new TransitionListener[size];
        }
        this.f10669z = null;
        TransitionListener[] transitionListenerArr2 = (TransitionListener[]) this.f10662v0.toArray(transitionListenerArr);
        for (int i = 0; i < size; i++) {
            interfaceC1503h.mo6625d(transitionListenerArr2[i], transition, z);
            transitionListenerArr2[i] = null;
        }
        this.f10669z = transitionListenerArr2;
    }

    /* renamed from: D */
    public void m6584D(InterfaceC1503h interfaceC1503h, boolean z) {
        m6583C(this, interfaceC1503h, z);
    }

    /* renamed from: F */
    public void m6585F(@NonNull ViewGroup viewGroup) {
        C1499d c1499d;
        this.f10665x = new ArrayList<>();
        this.f10667y = new ArrayList<>();
        m6582B(this.f10657t, this.f10659u);
        ArrayMap<Animator, C1499d> m6578r = m6578r();
        int size = m6578r.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i = size - 1; i >= 0; i--) {
            Animator keyAt = m6578r.keyAt(i);
            if (keyAt != null && (c1499d = m6578r.get(keyAt)) != null && c1499d.f10674a != null && windowId.equals(c1499d.f10677d)) {
                TransitionValues transitionValues = c1499d.f10676c;
                View view = c1499d.f10674a;
                TransitionValues transitionValues2 = getTransitionValues(view, true);
                TransitionValues m6602q = m6602q(view, true);
                if (transitionValues2 == null && m6602q == null) {
                    m6602q = this.f10659u.f76690a.get(view);
                }
                if (!(transitionValues2 == null && m6602q == null) && c1499d.f10678e.isTransitionRequired(transitionValues, m6602q)) {
                    Transition transition = c1499d.f10678e;
                    if (transition.getRootTransition().f10635C0 != null) {
                        keyAt.cancel();
                        transition.f10638O.remove(keyAt);
                        m6578r.remove(keyAt);
                        if (transition.f10638O.size() == 0) {
                            transition.m6584D(InterfaceC1503h.f10692c, false);
                            if (!transition.f10658t0) {
                                transition.f10658t0 = true;
                                transition.m6584D(InterfaceC1503h.f10691b, false);
                            }
                        }
                    } else if (keyAt.isRunning() || keyAt.isStarted()) {
                        keyAt.cancel();
                    } else {
                        m6578r.remove(keyAt);
                    }
                }
            }
        }
        mo6596j(viewGroup, this.f10657t, this.f10659u, this.f10665x, this.f10667y);
        if (this.f10635C0 == null) {
            runAnimators();
        } else if (Build.VERSION.SDK_INT >= 34) {
            mo6586G();
            this.f10635C0.m6617d();
            this.f10635C0.m6618f();
        }
    }

    @RequiresApi(34)
    /* renamed from: G */
    public void mo6586G() {
        ArrayMap<Animator, C1499d> m6578r = m6578r();
        this.f10634B0 = 0L;
        for (int i = 0; i < this.f10664w0.size(); i++) {
            Animator animator = this.f10664w0.get(i);
            C1499d c1499d = m6578r.get(animator);
            if (animator != null && c1499d != null) {
                if (getDuration() >= 0) {
                    c1499d.f10679f.setDuration(getDuration());
                }
                if (getStartDelay() >= 0) {
                    c1499d.f10679f.setStartDelay(getStartDelay() + c1499d.f10679f.getStartDelay());
                }
                if (getInterpolator() != null) {
                    c1499d.f10679f.setInterpolator(getInterpolator());
                }
                this.f10638O.add(animator);
                this.f10634B0 = Math.max(this.f10634B0, C1501f.m6611a(animator));
            }
        }
        this.f10664w0.clear();
    }

    /* renamed from: H */
    public final void m6587H(Animator animator, ArrayMap<Animator, C1499d> arrayMap) {
        if (animator != null) {
            animator.addListener(new C1497b(arrayMap));
            animate(animator);
        }
    }

    /* renamed from: I */
    public void mo6588I(boolean z) {
        this.f10637J = z;
    }

    @RequiresApi(34)
    /* renamed from: J */
    public void mo6589J(long j, long j2) {
        long m6603s = m6603s();
        boolean z = j < j2;
        if ((j2 < 0 && j >= 0) || (j2 > m6603s && j <= m6603s)) {
            this.f10658t0 = false;
            m6584D(InterfaceC1503h.f10690a, z);
        }
        int size = this.f10638O.size();
        Animator[] animatorArr = (Animator[]) this.f10638O.toArray(this.f10639Q);
        this.f10639Q = f10622F0;
        for (int i = 0; i < size; i++) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            C1501f.m6612b(animator, Math.min(Math.max(0L, j), C1501f.m6611a(animator)));
        }
        this.f10639Q = animatorArr;
        if ((j <= m6603s || j2 > m6603s) && (j >= 0 || j2 < 0)) {
            return;
        }
        if (j > m6603s) {
            this.f10658t0 = true;
        }
        m6584D(InterfaceC1503h.f10691b, z);
    }

    /* renamed from: K */
    public String mo6590K(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f10642g != -1) {
            sb.append("dur(");
            sb.append(this.f10642g);
            sb.append(") ");
        }
        if (this.f10641f != -1) {
            sb.append("dly(");
            sb.append(this.f10641f);
            sb.append(") ");
        }
        if (this.f10643h != null) {
            sb.append("interp(");
            sb.append(this.f10643h);
            sb.append(") ");
        }
        if (this.f10644i.size() > 0 || this.f10645j.size() > 0) {
            sb.append("tgts(");
            if (this.f10644i.size() > 0) {
                for (int i = 0; i < this.f10644i.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.f10644i.get(i));
                }
            }
            if (this.f10645j.size() > 0) {
                for (int i2 = 0; i2 < this.f10645j.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.f10645j.get(i2));
                }
            }
            sb.append(MotionUtils.f31762d);
        }
        return sb.toString();
    }

    @NonNull
    public Transition addListener(@NonNull TransitionListener transitionListener) {
        if (this.f10662v0 == null) {
            this.f10662v0 = new ArrayList<>();
        }
        this.f10662v0.add(transitionListener);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.f10645j.add(view);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void animate(@Nullable Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new C1498c());
        animator.start();
    }

    /* renamed from: c */
    public final void m6591c(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i = 0; i < arrayMap.size(); i++) {
            TransitionValues valueAt = arrayMap.valueAt(i);
            if (m6605v(valueAt.view)) {
                this.f10665x.add(valueAt);
                this.f10667y.add(null);
            }
        }
        for (int i2 = 0; i2 < arrayMap2.size(); i2++) {
            TransitionValues valueAt2 = arrayMap2.valueAt(i2);
            if (m6605v(valueAt2.view)) {
                this.f10667y.add(valueAt2);
                this.f10665x.add(null);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        int size = this.f10638O.size();
        Animator[] animatorArr = (Animator[]) this.f10638O.toArray(this.f10639Q);
        this.f10639Q = f10622F0;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.f10639Q = animatorArr;
        m6584D(InterfaceC1503h.f10692c, false);
    }

    public abstract void captureEndValues(@NonNull TransitionValues transitionValues);

    public abstract void captureStartValues(@NonNull TransitionValues transitionValues);

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void end() {
        int i = this.f10647k0 - 1;
        this.f10647k0 = i;
        if (i == 0) {
            m6584D(InterfaceC1503h.f10691b, false);
            for (int i2 = 0; i2 < this.f10657t.f76692c.size(); i2++) {
                View valueAt = this.f10657t.f76692c.valueAt(i2);
                if (valueAt != null) {
                    valueAt.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < this.f10659u.f76692c.size(); i3++) {
                View valueAt2 = this.f10659u.f76692c.valueAt(i3);
                if (valueAt2 != null) {
                    valueAt2.setHasTransientState(false);
                }
            }
            this.f10658t0 = true;
        }
    }

    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean z) {
        this.f10655r = m6600o(this.f10655r, view, z);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z) {
        this.f10650n = m6600o(this.f10650n, view, z);
        return this;
    }

    /* renamed from: f */
    public final void m6592f(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f10649m;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.f10650n;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.f10651o;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f10651o.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f10721a.add(this);
                    mo6593g(transitionValues);
                    if (z) {
                        m6575d(this.f10657t, view, transitionValues);
                    } else {
                        m6575d(this.f10659u, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.f10653q;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.f10655r;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.f10656s;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.f10656s.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                m6592f(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public void mo6593g(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.f10666x0 == null || transitionValues.values.isEmpty() || (propagationProperties = this.f10666x0.getPropagationProperties()) == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= propagationProperties.length) {
                z = true;
                break;
            } else if (!transitionValues.values.containsKey(propagationProperties[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f10666x0.captureValues(transitionValues);
    }

    public long getDuration() {
        return this.f10642g;
    }

    @Nullable
    public Rect getEpicenter() {
        EpicenterCallback epicenterCallback = this.f10668y0;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.onGetEpicenter(this);
    }

    @Nullable
    public EpicenterCallback getEpicenterCallback() {
        return this.f10668y0;
    }

    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.f10643h;
    }

    @NonNull
    public String getName() {
        return this.f10640e;
    }

    @NonNull
    public PathMotion getPathMotion() {
        return this.f10633A0;
    }

    @Nullable
    public TransitionPropagation getPropagation() {
        return this.f10666x0;
    }

    @NonNull
    public final Transition getRootTransition() {
        TransitionSet transitionSet = this.f10661v;
        return transitionSet != null ? transitionSet.getRootTransition() : this;
    }

    public long getStartDelay() {
        return this.f10641f;
    }

    @NonNull
    public List<Integer> getTargetIds() {
        return this.f10644i;
    }

    @Nullable
    public List<String> getTargetNames() {
        return this.f10646k;
    }

    @Nullable
    public List<Class<?>> getTargetTypes() {
        return this.f10648l;
    }

    @NonNull
    public List<View> getTargets() {
        return this.f10645j;
    }

    @Nullable
    public String[] getTransitionProperties() {
        return null;
    }

    @Nullable
    public TransitionValues getTransitionValues(@NonNull View view, boolean z) {
        TransitionSet transitionSet = this.f10661v;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z);
        }
        return (z ? this.f10657t : this.f10659u).f76690a.get(view);
    }

    /* renamed from: h */
    public void m6594h(@NonNull ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        ArrayMap<String, String> arrayMap;
        m6595i(z);
        if ((this.f10644i.size() > 0 || this.f10645j.size() > 0) && (((arrayList = this.f10646k) == null || arrayList.isEmpty()) && ((arrayList2 = this.f10648l) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f10644i.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f10644i.get(i).intValue());
                if (findViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(findViewById);
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f10721a.add(this);
                    mo6593g(transitionValues);
                    if (z) {
                        m6575d(this.f10657t, findViewById, transitionValues);
                    } else {
                        m6575d(this.f10659u, findViewById, transitionValues);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f10645j.size(); i2++) {
                View view = this.f10645j.get(i2);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.f10721a.add(this);
                mo6593g(transitionValues2);
                if (z) {
                    m6575d(this.f10657t, view, transitionValues2);
                } else {
                    m6575d(this.f10659u, view, transitionValues2);
                }
            }
        } else {
            m6592f(viewGroup, z);
        }
        if (z || (arrayMap = this.f10670z0) == null) {
            return;
        }
        int size = arrayMap.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList3.add(this.f10657t.f76693d.remove(this.f10670z0.keyAt(i3)));
        }
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) arrayList3.get(i4);
            if (view2 != null) {
                this.f10657t.f76693d.put(this.f10670z0.valueAt(i4), view2);
            }
        }
    }

    /* renamed from: i */
    public void m6595i(boolean z) {
        if (z) {
            this.f10657t.f76690a.clear();
            this.f10657t.f76691b.clear();
            this.f10657t.f76692c.clear();
        } else {
            this.f10659u.f76690a.clear();
            this.f10659u.f76691b.clear();
            this.f10659u.f76692c.clear();
        }
    }

    public boolean isSeekingSupported() {
        return false;
    }

    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties == null) {
            Iterator<String> it2 = transitionValues.values.keySet().iterator();
            while (it2.hasNext()) {
                if (m6580w(transitionValues, transitionValues2, it2.next())) {
                }
            }
            return false;
        }
        for (String str : transitionProperties) {
            if (!m6580w(transitionValues, transitionValues2, str)) {
            }
        }
        return false;
        return true;
    }

    /* renamed from: j */
    public void mo6596j(@NonNull ViewGroup viewGroup, @NonNull lnn lnnVar, @NonNull lnn lnnVar2, @NonNull ArrayList<TransitionValues> arrayList, @NonNull ArrayList<TransitionValues> arrayList2) {
        Animator createAnimator;
        int i;
        int i2;
        View view;
        Animator animator;
        TransitionValues transitionValues;
        Animator animator2;
        ArrayMap<Animator, C1499d> m6578r = m6578r();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z = getRootTransition().f10635C0 != null;
        long j = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            TransitionValues transitionValues2 = arrayList.get(i3);
            TransitionValues transitionValues3 = arrayList2.get(i3);
            if (transitionValues2 != null && !transitionValues2.f10721a.contains(this)) {
                transitionValues2 = null;
            }
            if (transitionValues3 != null && !transitionValues3.f10721a.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues2 != null || transitionValues3 != null) {
                if ((transitionValues2 == null || transitionValues3 == null || isTransitionRequired(transitionValues2, transitionValues3)) && (createAnimator = createAnimator(viewGroup, transitionValues2, transitionValues3)) != null) {
                    if (transitionValues3 != null) {
                        view = transitionValues3.view;
                        String[] transitionProperties = getTransitionProperties();
                        if (transitionProperties != null && transitionProperties.length > 0) {
                            TransitionValues transitionValues4 = new TransitionValues(view);
                            i = size;
                            TransitionValues transitionValues5 = lnnVar2.f76690a.get(view);
                            if (transitionValues5 != null) {
                                int i4 = 0;
                                while (i4 < transitionProperties.length) {
                                    Map<String, Object> map = transitionValues4.values;
                                    int i5 = i3;
                                    String str = transitionProperties[i4];
                                    map.put(str, transitionValues5.values.get(str));
                                    i4++;
                                    i3 = i5;
                                    transitionProperties = transitionProperties;
                                }
                            }
                            i2 = i3;
                            int size2 = m6578r.size();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size2) {
                                    transitionValues = transitionValues4;
                                    animator2 = createAnimator;
                                    break;
                                }
                                C1499d c1499d = m6578r.get(m6578r.keyAt(i6));
                                if (c1499d.f10676c != null && c1499d.f10674a == view && c1499d.f10675b.equals(getName()) && c1499d.f10676c.equals(transitionValues4)) {
                                    transitionValues = transitionValues4;
                                    animator2 = null;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator2 = createAnimator;
                            transitionValues = null;
                        }
                        animator = animator2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = transitionValues2.view;
                        animator = createAnimator;
                        transitionValues = null;
                    }
                    if (animator != null) {
                        TransitionPropagation transitionPropagation = this.f10666x0;
                        if (transitionPropagation != null) {
                            long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues2, transitionValues3);
                            sparseIntArray.put(this.f10664w0.size(), (int) startDelay);
                            j = Math.min(startDelay, j);
                        }
                        long j2 = j;
                        C1499d c1499d2 = new C1499d(view, getName(), this, viewGroup.getWindowId(), transitionValues, animator);
                        if (z) {
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.play(animator);
                            animator = animatorSet;
                        }
                        m6578r.put(animator, c1499d2);
                        this.f10664w0.add(animator);
                        j = j2;
                    }
                    i3 = i2 + 1;
                    size = i;
                }
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                C1499d c1499d3 = m6578r.get(this.f10664w0.get(sparseIntArray.keyAt(i7)));
                c1499d3.f10679f.setStartDelay((sparseIntArray.valueAt(i7) - j) + c1499d3.f10679f.getStartDelay());
            }
        }
    }

    @NonNull
    @RequiresApi(34)
    /* renamed from: k */
    public TransitionSeekController m6597k() {
        C1502g c1502g = new C1502g();
        this.f10635C0 = c1502g;
        addListener(c1502g);
        return this.f10635C0;
    }

    /* renamed from: l */
    public final ArrayList<Integer> m6598l(ArrayList<Integer> arrayList, int i, boolean z) {
        return i > 0 ? z ? C1500e.m6609a(arrayList, Integer.valueOf(i)) : C1500e.m6610b(arrayList, Integer.valueOf(i)) : arrayList;
    }

    /* renamed from: n */
    public final ArrayList<Class<?>> m6599n(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z) {
        return cls != null ? z ? C1500e.m6609a(arrayList, cls) : C1500e.m6610b(arrayList, cls) : arrayList;
    }

    /* renamed from: o */
    public final ArrayList<View> m6600o(ArrayList<View> arrayList, View view, boolean z) {
        return view != null ? z ? C1500e.m6609a(arrayList, view) : C1500e.m6610b(arrayList, view) : arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: p */
    public void mo6601p(@Nullable ViewGroup viewGroup) {
        ArrayMap<Animator, C1499d> m6578r = m6578r();
        int size = m6578r.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        WindowId windowId = viewGroup.getWindowId();
        ArrayMap arrayMap = new ArrayMap(m6578r);
        m6578r.clear();
        for (int i = size - 1; i >= 0; i--) {
            C1499d c1499d = (C1499d) arrayMap.valueAt(i);
            if (c1499d.f10674a != null && windowId.equals(c1499d.f10677d)) {
                ((Animator) arrayMap.keyAt(i)).end();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(@Nullable View view) {
        if (this.f10658t0) {
            return;
        }
        int size = this.f10638O.size();
        Animator[] animatorArr = (Animator[]) this.f10638O.toArray(this.f10639Q);
        this.f10639Q = f10622F0;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.f10639Q = animatorArr;
        m6584D(InterfaceC1503h.f10693d, false);
        this.f10654q0 = true;
    }

    /* renamed from: q */
    public TransitionValues m6602q(View view, boolean z) {
        TransitionSet transitionSet = this.f10661v;
        if (transitionSet != null) {
            return transitionSet.m6602q(view, z);
        }
        ArrayList<TransitionValues> arrayList = z ? this.f10665x : this.f10667y;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            TransitionValues transitionValues = arrayList.get(i);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (z ? this.f10667y : this.f10665x).get(i);
        }
        return null;
    }

    @NonNull
    public Transition removeListener(@NonNull TransitionListener transitionListener) {
        Transition transition;
        ArrayList<TransitionListener> arrayList = this.f10662v0;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(transitionListener) && (transition = this.f10660u0) != null) {
            transition.removeListener(transitionListener);
        }
        if (this.f10662v0.size() == 0) {
            this.f10662v0 = null;
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.f10645j.remove(view);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(@Nullable View view) {
        if (this.f10654q0) {
            if (!this.f10658t0) {
                int size = this.f10638O.size();
                Animator[] animatorArr = (Animator[]) this.f10638O.toArray(this.f10639Q);
                this.f10639Q = f10622F0;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.f10639Q = animatorArr;
                m6584D(InterfaceC1503h.f10694e, false);
            }
            this.f10654q0 = false;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        start();
        ArrayMap<Animator, C1499d> m6578r = m6578r();
        Iterator<Animator> it2 = this.f10664w0.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (m6578r.containsKey(next)) {
                start();
                m6587H(next, m6578r);
            }
        }
        this.f10664w0.clear();
        end();
    }

    /* renamed from: s */
    public final long m6603s() {
        return this.f10634B0;
    }

    @NonNull
    public Transition setDuration(long j) {
        this.f10642g = j;
        return this;
    }

    public void setEpicenterCallback(@Nullable EpicenterCallback epicenterCallback) {
        this.f10668y0 = epicenterCallback;
    }

    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f10643h = timeInterpolator;
        return this;
    }

    public void setMatchOrder(@Nullable int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f10663w = f10630N0;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!m6579u(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (m6576e(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f10663w = (int[]) iArr.clone();
    }

    public void setPathMotion(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f10633A0 = f10631O0;
        } else {
            this.f10633A0 = pathMotion;
        }
    }

    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        this.f10666x0 = transitionPropagation;
    }

    @NonNull
    public Transition setStartDelay(long j) {
        this.f10641f = j;
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void start() {
        if (this.f10647k0 == 0) {
            m6584D(InterfaceC1503h.f10690a, false);
            this.f10658t0 = false;
        }
        this.f10647k0++;
    }

    /* renamed from: t */
    public boolean mo6604t() {
        return !this.f10638O.isEmpty();
    }

    @NonNull
    public String toString() {
        return mo6590K("");
    }

    /* renamed from: v */
    public boolean m6605v(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f10649m;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.f10650n;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.f10651o;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.f10651o.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f10652p != null && ViewCompat.getTransitionName(view) != null && this.f10652p.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.f10644i.size() == 0 && this.f10645j.size() == 0 && (((arrayList = this.f10648l) == null || arrayList.isEmpty()) && ((arrayList2 = this.f10646k) == null || arrayList2.isEmpty()))) || this.f10644i.contains(Integer.valueOf(id)) || this.f10645j.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f10646k;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.f10648l != null) {
            for (int i2 = 0; i2 < this.f10648l.size(); i2++) {
                if (this.f10648l.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: x */
    public final void m6606x(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m6605v(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m6605v(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f10665x.add(transitionValues);
                    this.f10667y.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: y */
    public final void m6607y(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues remove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View keyAt = arrayMap.keyAt(size);
            if (keyAt != null && m6605v(keyAt) && (remove = arrayMap2.remove(keyAt)) != null && m6605v(remove.view)) {
                this.f10665x.add(arrayMap.removeAt(size));
                this.f10667y.add(remove);
            }
        }
    }

    /* renamed from: z */
    public final void m6608z(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = longSparseArray.valueAt(i);
            if (valueAt != null && m6605v(valueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i))) != null && m6605v(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f10665x.add(transitionValues);
                    this.f10667y.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    @NonNull
    public Transition addTarget(@IdRes int i) {
        if (i != 0) {
            this.f10644i.add(Integer.valueOf(i));
        }
        return this;
    }

    @Override // 
    @NonNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo72145clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f10664w0 = new ArrayList<>();
            transition.f10657t = new lnn();
            transition.f10659u = new lnn();
            transition.f10665x = null;
            transition.f10667y = null;
            transition.f10635C0 = null;
            transition.f10660u0 = this;
            transition.f10662v0 = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public Transition excludeChildren(@IdRes int i, boolean z) {
        this.f10653q = m6598l(this.f10653q, i, z);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int i, boolean z) {
        this.f10649m = m6598l(this.f10649m, i, z);
        return this;
    }

    @NonNull
    public Transition removeTarget(@IdRes int i) {
        if (i != 0) {
            this.f10644i.remove(Integer.valueOf(i));
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull String str) {
        if (this.f10646k == null) {
            this.f10646k = new ArrayList<>();
        }
        this.f10646k.add(str);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class<?> cls, boolean z) {
        this.f10656s = m6599n(this.f10656s, cls, z);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z) {
        this.f10652p = m6577m(this.f10652p, str, z);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull String str) {
        ArrayList<String> arrayList = this.f10646k;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z) {
        this.f10651o = m6599n(this.f10651o, cls, z);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.f10648l;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull Class<?> cls) {
        if (this.f10648l == null) {
            this.f10648l = new ArrayList<>();
        }
        this.f10648l.add(cls);
        return this;
    }

    public Transition(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10758c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (namedInt >= 0) {
            setDuration(namedInt);
        }
        long namedInt2 = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (namedInt2 > 0) {
            setStartDelay(namedInt2);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        }
        String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (namedString != null) {
            setMatchOrder(m6572E(namedString));
        }
        obtainStyledAttributes.recycle();
    }
}
