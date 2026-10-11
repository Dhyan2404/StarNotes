package androidx.transition;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class Scene {

    /* renamed from: a */
    public Context f10602a;

    /* renamed from: b */
    public int f10603b;

    /* renamed from: c */
    public ViewGroup f10604c;

    /* renamed from: d */
    public View f10605d;

    /* renamed from: e */
    public Runnable f10606e;

    /* renamed from: f */
    public Runnable f10607f;

    public Scene(@NonNull ViewGroup viewGroup) {
        this.f10603b = -1;
        this.f10604c = viewGroup;
    }

    /* renamed from: b */
    public static void m6565b(@NonNull ViewGroup viewGroup, @Nullable Scene scene) {
        viewGroup.setTag(C1486R.id.transition_current_scene, scene);
    }

    @Nullable
    public static Scene getCurrentScene(@NonNull ViewGroup viewGroup) {
        return (Scene) viewGroup.getTag(C1486R.id.transition_current_scene);
    }

    @NonNull
    public static Scene getSceneForLayout(@NonNull ViewGroup viewGroup, @LayoutRes int i, @NonNull Context context) {
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(C1486R.id.transition_scene_layoutid_cache);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            viewGroup.setTag(C1486R.id.transition_scene_layoutid_cache, sparseArray);
        }
        Scene scene = (Scene) sparseArray.get(i);
        if (scene != null) {
            return scene;
        }
        Scene scene2 = new Scene(viewGroup, i, context);
        sparseArray.put(i, scene2);
        return scene2;
    }

    /* renamed from: a */
    public boolean m6566a() {
        return this.f10603b > 0;
    }

    public void enter() {
        if (this.f10603b > 0 || this.f10605d != null) {
            getSceneRoot().removeAllViews();
            if (this.f10603b > 0) {
                LayoutInflater.from(this.f10602a).inflate(this.f10603b, this.f10604c);
            } else {
                this.f10604c.addView(this.f10605d);
            }
        }
        Runnable runnable = this.f10606e;
        if (runnable != null) {
            runnable.run();
        }
        m6565b(this.f10604c, this);
    }

    public void exit() {
        Runnable runnable;
        if (getCurrentScene(this.f10604c) != this || (runnable = this.f10607f) == null) {
            return;
        }
        runnable.run();
    }

    @NonNull
    public ViewGroup getSceneRoot() {
        return this.f10604c;
    }

    public void setEnterAction(@Nullable Runnable runnable) {
        this.f10606e = runnable;
    }

    public void setExitAction(@Nullable Runnable runnable) {
        this.f10607f = runnable;
    }

    public Scene(ViewGroup viewGroup, int i, Context context) {
        this.f10602a = context;
        this.f10604c = viewGroup;
        this.f10603b = i;
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.f10603b = -1;
        this.f10604c = viewGroup;
        this.f10605d = view;
    }
}
