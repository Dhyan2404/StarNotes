package androidx.transition;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class TransitionManager {

    /* renamed from: c */
    public static final String f10698c = "TransitionManager";

    /* renamed from: d */
    public static Transition f10699d = new AutoTransition();

    /* renamed from: e */
    public static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>>> f10700e = new ThreadLocal<>();

    /* renamed from: f */
    public static ArrayList<ViewGroup> f10701f = new ArrayList<>();

    /* renamed from: a */
    public ArrayMap<Scene, Transition> f10702a = new ArrayMap<>();

    /* renamed from: b */
    public ArrayMap<Scene, ArrayMap<Scene, Transition>> f10703b = new ArrayMap<>();

    /* renamed from: androidx.transition.TransitionManager$a */
    /* loaded from: classes3.dex */
    public static class ViewTreeObserverOnPreDrawListenerC1504a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: e */
        public Transition f10704e;

        /* renamed from: f */
        public ViewGroup f10705f;

        /* renamed from: androidx.transition.TransitionManager$a$a */
        /* loaded from: classes3.dex */
        public class a extends TransitionListenerAdapter {

            /* renamed from: e */
            public final /* synthetic */ ArrayMap f10706e;

            public a(ArrayMap arrayMap) {
                this.f10706e = arrayMap;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ((ArrayList) this.f10706e.get(ViewTreeObserverOnPreDrawListenerC1504a.this.f10705f)).remove(transition);
                transition.removeListener(this);
            }
        }

        public ViewTreeObserverOnPreDrawListenerC1504a(Transition transition, ViewGroup viewGroup) {
            this.f10704e = transition;
            this.f10705f = viewGroup;
        }

        /* renamed from: a */
        public final void m6638a() {
            this.f10705f.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f10705f.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            m6638a();
            if (!TransitionManager.f10701f.remove(this.f10705f)) {
                return true;
            }
            ArrayMap<ViewGroup, ArrayList<Transition>> m6632b = TransitionManager.m6632b();
            ArrayList<Transition> arrayList = m6632b.get(this.f10705f);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                m6632b.put(this.f10705f, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f10704e);
            this.f10704e.addListener(new a(m6632b));
            this.f10704e.m6594h(this.f10705f, false);
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((Transition) it2.next()).resume(this.f10705f);
                }
            }
            this.f10704e.m6585F(this.f10705f);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m6638a();
            TransitionManager.f10701f.remove(this.f10705f);
            ArrayList<Transition> arrayList = TransitionManager.m6632b().get(this.f10705f);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().resume(this.f10705f);
                }
            }
            this.f10704e.m6595i(true);
        }
    }

    /* renamed from: a */
    public static void m6631a(Scene scene, Transition transition) {
        ViewGroup sceneRoot = scene.getSceneRoot();
        if (f10701f.contains(sceneRoot)) {
            return;
        }
        Scene currentScene = Scene.getCurrentScene(sceneRoot);
        if (transition == null) {
            if (currentScene != null) {
                currentScene.exit();
            }
            scene.enter();
            return;
        }
        f10701f.add(sceneRoot);
        Transition mo72145clone = transition.mo72145clone();
        if (currentScene != null && currentScene.m6566a()) {
            mo72145clone.mo6588I(true);
        }
        m6634e(sceneRoot, mo72145clone);
        scene.enter();
        m6633d(sceneRoot, mo72145clone);
    }

    @VisibleForTesting
    /* renamed from: b */
    public static ArrayMap<ViewGroup, ArrayList<Transition>> m6632b() {
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap;
        WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>> weakReference = f10700e.get();
        if (weakReference != null && (arrayMap = weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap2 = new ArrayMap<>();
        f10700e.set(new WeakReference<>(arrayMap2));
        return arrayMap2;
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup) {
        beginDelayedTransition(viewGroup, null);
    }

    @Nullable
    public static TransitionSeekController controlDelayedTransition(@NonNull ViewGroup viewGroup, @NonNull Transition transition) {
        if (f10701f.contains(viewGroup) || !viewGroup.isLaidOut() || Build.VERSION.SDK_INT < 34) {
            return null;
        }
        if (!transition.isSeekingSupported()) {
            throw new IllegalArgumentException("The Transition must support seeking.");
        }
        f10701f.add(viewGroup);
        Transition mo72145clone = transition.mo72145clone();
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(mo72145clone);
        m6634e(viewGroup, transitionSet);
        Scene.m6565b(viewGroup, null);
        m6633d(viewGroup, transitionSet);
        viewGroup.invalidate();
        return transitionSet.m6597k();
    }

    @Nullable
    public static TransitionSeekController createSeekController(@NonNull Scene scene, @NonNull Transition transition) {
        ViewGroup sceneRoot = scene.getSceneRoot();
        if (!transition.isSeekingSupported()) {
            throw new IllegalArgumentException("The Transition must support seeking.");
        }
        if (f10701f.contains(sceneRoot)) {
            return null;
        }
        Scene currentScene = Scene.getCurrentScene(sceneRoot);
        if (!sceneRoot.isLaidOut() || Build.VERSION.SDK_INT < 34) {
            if (currentScene != null) {
                currentScene.exit();
            }
            scene.enter();
            return null;
        }
        f10701f.add(sceneRoot);
        Transition mo72145clone = transition.mo72145clone();
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(mo72145clone);
        if (currentScene != null && currentScene.m6566a()) {
            transitionSet.mo6588I(true);
        }
        m6634e(sceneRoot, transitionSet);
        scene.enter();
        m6633d(sceneRoot, transitionSet);
        return transitionSet.m6597k();
    }

    /* renamed from: d */
    public static void m6633d(ViewGroup viewGroup, Transition transition) {
        if (transition == null || viewGroup == null) {
            return;
        }
        ViewTreeObserverOnPreDrawListenerC1504a viewTreeObserverOnPreDrawListenerC1504a = new ViewTreeObserverOnPreDrawListenerC1504a(transition, viewGroup);
        viewGroup.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC1504a);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC1504a);
    }

    /* renamed from: e */
    public static void m6634e(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = m6632b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().pause(viewGroup);
            }
        }
        if (transition != null) {
            transition.m6594h(viewGroup, true);
        }
        Scene currentScene = Scene.getCurrentScene(viewGroup);
        if (currentScene != null) {
            currentScene.exit();
        }
    }

    public static void endTransitions(@Nullable ViewGroup viewGroup) {
        f10701f.remove(viewGroup);
        ArrayList<Transition> arrayList = m6632b().get(viewGroup);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            ((Transition) arrayList2.get(size)).mo6601p(viewGroup);
        }
    }

    /* renamed from: go */
    public static void m6635go(@NonNull Scene scene) {
        m6631a(scene, f10699d);
    }

    /* renamed from: c */
    public final Transition m6637c(Scene scene) {
        ArrayMap<Scene, Transition> arrayMap;
        Transition transition;
        Scene currentScene = Scene.getCurrentScene(scene.getSceneRoot());
        if (currentScene != null && (arrayMap = this.f10703b.get(scene)) != null && (transition = arrayMap.get(currentScene)) != null) {
            return transition;
        }
        Transition transition2 = this.f10702a.get(scene);
        return transition2 != null ? transition2 : f10699d;
    }

    public void setTransition(@NonNull Scene scene, @Nullable Transition transition) {
        this.f10702a.put(scene, transition);
    }

    public void transitionTo(@NonNull Scene scene) {
        m6631a(scene, m6637c(scene));
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        if (f10701f.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        f10701f.add(viewGroup);
        if (transition == null) {
            transition = f10699d;
        }
        Transition mo72145clone = transition.mo72145clone();
        m6634e(viewGroup, mo72145clone);
        Scene.m6565b(viewGroup, null);
        m6633d(viewGroup, mo72145clone);
    }

    /* renamed from: go */
    public static void m6636go(@NonNull Scene scene, @Nullable Transition transition) {
        m6631a(scene, transition);
    }

    public void setTransition(@NonNull Scene scene, @NonNull Scene scene2, @Nullable Transition transition) {
        ArrayMap<Scene, Transition> arrayMap = this.f10703b.get(scene2);
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>();
            this.f10703b.put(scene2, arrayMap);
        }
        arrayMap.put(scene, transition);
    }
}
