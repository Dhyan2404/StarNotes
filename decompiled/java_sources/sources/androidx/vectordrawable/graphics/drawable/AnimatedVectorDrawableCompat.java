package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.HTREnginev2.C14447ta;
import com.sunia.HTREnginev2.o0o;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class AnimatedVectorDrawableCompat extends o0o implements Animatable2Compat {

    /* renamed from: m */
    public static final String f10806m = "AnimatedVDCompat";

    /* renamed from: n */
    public static final String f10807n = "animated-vector";

    /* renamed from: o */
    public static final String f10808o = "target";

    /* renamed from: p */
    public static final boolean f10809p = false;

    /* renamed from: f */
    public C1521c f10810f;

    /* renamed from: g */
    public Context f10811g;

    /* renamed from: h */
    public android.animation.ArgbEvaluator f10812h;

    /* renamed from: i */
    public C1522d f10813i;

    /* renamed from: j */
    public Animator.AnimatorListener f10814j;

    /* renamed from: k */
    public ArrayList<Animatable2Compat.AnimationCallback> f10815k;

    /* renamed from: l */
    public final Drawable.Callback f10816l;

    /* renamed from: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$a */
    /* loaded from: classes3.dex */
    public class C1519a implements Drawable.Callback {
        public C1519a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            AnimatedVectorDrawableCompat.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$b */
    /* loaded from: classes3.dex */
    public class C1520b extends AnimatorListenerAdapter {
        public C1520b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ArrayList arrayList = new ArrayList(AnimatedVectorDrawableCompat.this.f10815k);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationEnd(AnimatedVectorDrawableCompat.this);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ArrayList arrayList = new ArrayList(AnimatedVectorDrawableCompat.this.f10815k);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationStart(AnimatedVectorDrawableCompat.this);
            }
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$c */
    /* loaded from: classes3.dex */
    public static class C1521c extends Drawable.ConstantState {

        /* renamed from: a */
        public int f10819a;

        /* renamed from: b */
        public VectorDrawableCompat f10820b;

        /* renamed from: c */
        public AnimatorSet f10821c;

        /* renamed from: d */
        public ArrayList<Animator> f10822d;

        /* renamed from: e */
        public ArrayMap<Animator, String> f10823e;

        public C1521c(Context context, C1521c c1521c, Drawable.Callback callback, Resources resources) {
            if (c1521c != null) {
                this.f10819a = c1521c.f10819a;
                VectorDrawableCompat vectorDrawableCompat = c1521c.f10820b;
                if (vectorDrawableCompat != null) {
                    Drawable.ConstantState constantState = vectorDrawableCompat.getConstantState();
                    if (resources != null) {
                        this.f10820b = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.f10820b = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    VectorDrawableCompat vectorDrawableCompat2 = (VectorDrawableCompat) this.f10820b.mutate();
                    this.f10820b = vectorDrawableCompat2;
                    vectorDrawableCompat2.setCallback(callback);
                    this.f10820b.setBounds(c1521c.f10820b.getBounds());
                    this.f10820b.m6707g(false);
                }
                ArrayList<Animator> arrayList = c1521c.f10822d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f10822d = new ArrayList<>(size);
                    this.f10823e = new ArrayMap<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = c1521c.f10822d.get(i);
                        Animator clone = animator.clone();
                        String str = c1521c.f10823e.get(animator);
                        clone.setTarget(this.f10820b.m6703b(str));
                        this.f10822d.add(clone);
                        this.f10823e.put(clone, str);
                    }
                    m6677a();
                }
            }
        }

        /* renamed from: a */
        public void m6677a() {
            if (this.f10821c == null) {
                this.f10821c = new AnimatorSet();
            }
            this.f10821c.playTogether(this.f10822d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f10819a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public AnimatedVectorDrawableCompat() {
        this(null, null, null);
    }

    @RequiresApi(23)
    /* renamed from: a */
    public static void m6672a(@NonNull AnimatedVectorDrawable animatedVectorDrawable, @NonNull Animatable2Compat.AnimationCallback animationCallback) {
        animatedVectorDrawable.registerAnimationCallback(animationCallback.m6671a());
    }

    @Nullable
    public static AnimatedVectorDrawableCompat create(@NonNull Context context, @DrawableRes int i) {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        Drawable drawable = ResourcesCompat.getDrawable(context.getResources(), i, context.getTheme());
        animatedVectorDrawableCompat.f79205e = drawable;
        drawable.setCallback(animatedVectorDrawableCompat.f10816l);
        animatedVectorDrawableCompat.f10813i = new C1522d(animatedVectorDrawableCompat.f79205e.getConstantState());
        return animatedVectorDrawableCompat;
    }

    public static AnimatedVectorDrawableCompat createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        animatedVectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return animatedVectorDrawableCompat;
    }

    @RequiresApi(23)
    /* renamed from: e */
    public static boolean m6673e(AnimatedVectorDrawable animatedVectorDrawable, Animatable2Compat.AnimationCallback animationCallback) {
        return animatedVectorDrawable.unregisterAnimationCallback(animationCallback.m6671a());
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.applyTheme(drawable, theme);
        }
    }

    /* renamed from: b */
    public final void m6674b() {
        Animator.AnimatorListener animatorListener = this.f10814j;
        if (animatorListener != null) {
            this.f10810f.f10821c.removeListener(animatorListener);
            this.f10814j = null;
        }
    }

    /* renamed from: c */
    public final void m6675c(String str, Animator animator) {
        animator.setTarget(this.f10810f.f10820b.m6703b(str));
        C1521c c1521c = this.f10810f;
        if (c1521c.f10822d == null) {
            c1521c.f10822d = new ArrayList<>();
            this.f10810f.f10823e = new ArrayMap<>();
        }
        this.f10810f.f10822d.add(animator);
        this.f10810f.f10823e.put(animator, str);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return DrawableCompat.canApplyTheme(drawable);
        }
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
            return;
        }
        m6674b();
        ArrayList<Animatable2Compat.AnimationCallback> arrayList = this.f10815k;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* renamed from: d */
    public final void m6676d(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m6676d(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if (CouchFieldKey.KEY_FILL_COLOR.equals(propertyName) || ApiBroadCastReceiver.ARGS_STROKE_COLOR.equals(propertyName)) {
                if (this.f10812h == null) {
                    this.f10812h = new android.animation.ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f10812h);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f10810f.f10820b.draw(canvas);
        if (this.f10810f.f10821c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.getAlpha(drawable) : this.f10810f.f10820b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f10810f.f10819a | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.getColorFilter(drawable) : this.f10810f.f10820b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f79205e != null) {
            return new C1522d(this.f79205e.getConstantState());
        }
        return null;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f10810f.f10820b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f10810f.f10820b.getIntrinsicWidth();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.getOpacity() : this.f10810f.f10820b.getOpacity();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (f10807n.equals(name)) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C14447ta.f85048M);
                    int resourceId = obtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawableCompat create = VectorDrawableCompat.create(resources, resourceId, theme);
                        create.m6707g(false);
                        create.setCallback(this.f10816l);
                        VectorDrawableCompat vectorDrawableCompat = this.f10810f.f10820b;
                        if (vectorDrawableCompat != null) {
                            vectorDrawableCompat.setCallback(null);
                        }
                        this.f10810f.f10820b = create;
                    }
                    obtainAttributes.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(attributeSet, C14447ta.f85050O);
                    String string = obtainAttributes2.getString(0);
                    int resourceId2 = obtainAttributes2.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f10811g;
                        if (context != null) {
                            m6675c(string, AnimatorInflaterCompat.loadAnimator(context, resourceId2));
                        } else {
                            obtainAttributes2.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes2.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f10810f.m6677a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.isAutoMirrored(drawable) : this.f10810f.f10820b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f79205e;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f10810f.f10821c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.isStateful() : this.f10810f.f10820b.isStateful();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f10810f.f10820b.setBounds(rect);
        }
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.setLevel(i) : this.f10810f.f10820b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.setState(iArr) : this.f10810f.f10820b.setState(iArr);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            m6672a((AnimatedVectorDrawable) drawable, animationCallback);
            return;
        }
        if (animationCallback == null) {
            return;
        }
        if (this.f10815k == null) {
            this.f10815k = new ArrayList<>();
        }
        if (this.f10815k.contains(animationCallback)) {
            return;
        }
        this.f10815k.add(animationCallback);
        if (this.f10814j == null) {
            this.f10814j = new C1520b();
        }
        this.f10810f.f10821c.addListener(this.f10814j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f10810f.f10820b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z);
        } else {
            this.f10810f.f10820b.setAutoMirrored(z);
        }
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i);
        } else {
            this.f10810f.f10820b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        } else {
            this.f10810f.f10820b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
        } else {
            this.f10810f.f10820b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f10810f.f10820b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f10810f.f10821c.isStarted()) {
                return;
            }
            this.f10810f.f10821c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f10810f.f10821c.end();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            m6673e((AnimatedVectorDrawable) drawable, animationCallback);
        }
        ArrayList<Animatable2Compat.AnimationCallback> arrayList = this.f10815k;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        boolean remove = arrayList.remove(animationCallback);
        if (this.f10815k.size() == 0) {
            m6674b();
        }
        return remove;
    }

    public AnimatedVectorDrawableCompat(@Nullable Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f10810f.f10820b.setColorFilter(colorFilter);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$d */
    /* loaded from: classes3.dex */
    public static class C1522d extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f10824a;

        public C1522d(Drawable.ConstantState constantState) {
            this.f10824a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f10824a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f10824a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f10824a.newDrawable();
            animatedVectorDrawableCompat.f79205e = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f10816l);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f10824a.newDrawable(resources);
            animatedVectorDrawableCompat.f79205e = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f10816l);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f10824a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f79205e = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f10816l);
            return animatedVectorDrawableCompat;
        }
    }

    public AnimatedVectorDrawableCompat(@Nullable Context context, @Nullable C1521c c1521c, @Nullable Resources resources) {
        this.f10812h = null;
        this.f10814j = null;
        this.f10815k = null;
        C1519a c1519a = new C1519a();
        this.f10816l = c1519a;
        this.f10811g = context;
        if (c1521c != null) {
            this.f10810f = c1521c;
        } else {
            this.f10810f = new C1521c(context, c1521c, c1519a, resources);
        }
    }

    public static void clearAnimationCallbacks(Drawable drawable) {
        if (drawable instanceof Animatable) {
            ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
        }
    }

    public static boolean unregisterAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return false;
        }
        return m6673e((AnimatedVectorDrawable) drawable, animationCallback);
    }

    public static void registerAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return;
        }
        m6672a((AnimatedVectorDrawable) drawable, animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
