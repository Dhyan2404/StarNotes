package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes3.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;

    /* renamed from: b0 */
    public static final boolean f3225b0 = false;

    /* renamed from: c0 */
    public static final boolean f3226c0 = false;

    /* renamed from: d0 */
    public static final int f3227d0 = -2;

    /* renamed from: e0 */
    public static final int f3228e0 = 0;

    /* renamed from: f0 */
    public static final int f3229f0 = 1;

    /* renamed from: A */
    public int f3230A;

    /* renamed from: B */
    public int f3231B;

    /* renamed from: C */
    public float f3232C;

    /* renamed from: D */
    public float f3233D;

    /* renamed from: E */
    public Object f3234E;

    /* renamed from: F */
    public int f3235F;

    /* renamed from: G */
    public int f3236G;

    /* renamed from: H */
    public boolean f3237H;

    /* renamed from: I */
    public String f3238I;

    /* renamed from: J */
    public String f3239J;

    /* renamed from: K */
    public int f3240K;

    /* renamed from: L */
    public int f3241L;

    /* renamed from: M */
    public int f3242M;

    /* renamed from: N */
    public int f3243N;

    /* renamed from: O */
    public boolean f3244O;

    /* renamed from: P */
    public boolean f3245P;

    /* renamed from: Q */
    public boolean f3246Q;

    /* renamed from: R */
    public boolean f3247R;

    /* renamed from: S */
    public boolean f3248S;

    /* renamed from: T */
    public boolean f3249T;

    /* renamed from: U */
    public boolean f3250U;

    /* renamed from: V */
    public int f3251V;

    /* renamed from: W */
    public int f3252W;

    /* renamed from: X */
    public boolean f3253X;

    /* renamed from: Y */
    public boolean f3254Y;

    /* renamed from: Z */
    public ConstraintWidget f3255Z;

    /* renamed from: a */
    public boolean f3256a;

    /* renamed from: a0 */
    public ConstraintWidget f3257a0;

    /* renamed from: b */
    public boolean f3258b;

    /* renamed from: c */
    public boolean f3259c;

    /* renamed from: d */
    public boolean f3260d;

    /* renamed from: e */
    public int f3261e;

    /* renamed from: f */
    public int f3262f;
    public WidgetFrame frame;

    /* renamed from: g */
    public boolean f3263g;

    /* renamed from: h */
    public boolean f3264h;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public HorizontalWidgetRun horizontalRun;

    /* renamed from: i */
    public boolean f3265i;
    public boolean[] isTerminalWidget;

    /* renamed from: j */
    public boolean f3266j;

    /* renamed from: k */
    public int f3267k;

    /* renamed from: l */
    public int f3268l;

    /* renamed from: m */
    public float f3269m;
    protected ArrayList<ConstraintAnchor> mAnchors;
    public ConstraintAnchor mBaseline;
    public ConstraintAnchor mBottom;
    public ConstraintAnchor mCenter;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    public int mHorizontalResolution;
    public boolean mIsHeightWrapContent;
    public boolean mIsWidthWrapContent;
    public ConstraintAnchor mLeft;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    public ConstraintWidget mParent;
    public int[] mResolvedMatchConstraintDefault;
    public ConstraintAnchor mRight;
    public ConstraintAnchor mTop;
    public int mVerticalResolution;
    public float[] mWeight;

    /* renamed from: mX */
    protected int f3270mX;

    /* renamed from: mY */
    protected int f3271mY;
    public boolean measured;

    /* renamed from: n */
    public int[] f3272n;

    /* renamed from: o */
    public float f3273o;

    /* renamed from: p */
    public boolean f3274p;

    /* renamed from: q */
    public boolean f3275q;

    /* renamed from: r */
    public boolean f3276r;
    public WidgetRun[] run;

    /* renamed from: s */
    public int f3277s;
    public String stringId;

    /* renamed from: t */
    public int f3278t;

    /* renamed from: u */
    public ConstraintAnchor f3279u;

    /* renamed from: v */
    public ConstraintAnchor f3280v;
    public ChainRun verticalChainRun;
    public int verticalGroup;
    public VerticalWidgetRun verticalRun;

    /* renamed from: w */
    public boolean[] f3281w;

    /* renamed from: x */
    public int f3282x;

    /* renamed from: y */
    public int f3283y;

    /* renamed from: z */
    public int f3284z;

    /* loaded from: classes3.dex */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0417a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3285a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f3286b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f3286b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3286b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3286b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3286b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f3285a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3285a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3285a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3285a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3285a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3285a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3285a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3285a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f3285a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f3256a = false;
        this.f3258b = true;
        this.f3259c = false;
        this.f3260d = true;
        this.f3261e = -1;
        this.f3262f = -1;
        this.frame = new WidgetFrame(this);
        this.f3263g = false;
        this.f3264h = false;
        this.f3265i = false;
        this.f3266j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f3267k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f3268l = -1;
        this.f3269m = 1.0f;
        this.f3272n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f3273o = 0.0f;
        this.f3274p = false;
        this.f3276r = false;
        this.f3277s = 0;
        this.f3278t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f3279u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f3280v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.f3281w = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.f3282x = 0;
        this.f3283y = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f3270mX = 0;
        this.f3271mY = 0;
        this.f3284z = 0;
        this.f3230A = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.f3231B = 0;
        float f = DEFAULT_BIAS;
        this.f3232C = f;
        this.f3233D = f;
        this.f3235F = 0;
        this.f3236G = 0;
        this.f3237H = false;
        this.f3238I = null;
        this.f3239J = null;
        this.f3250U = false;
        this.f3251V = 0;
        this.f3252W = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.f3255Z = null;
        this.f3257a0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        m1576a();
    }

    /* renamed from: a */
    public final void m1576a() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.f3279u);
        this.mAnchors.add(this.f3280v);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.m1638a(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it2 = dependents.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it3 = dependents2.iterator();
                while (it3.hasNext()) {
                    it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it4 = dependents3.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it5 = dependents4.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it6 = dependents5.iterator();
            while (it6.hasNext()) {
                it6.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05dd  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x021a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addToSolver(androidx.constraintlayout.core.LinearSystem r54, boolean r55) {
        /*
            Method dump skipped, instructions count: 1539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.addToSolver(androidx.constraintlayout.core.LinearSystem, boolean):void");
    }

    public boolean allowedInBarrier() {
        return this.f3236G != 8;
    }

    /* renamed from: b */
    public boolean m1577b() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0443 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04df A[ADDED_TO_REGION] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1578c(androidx.constraintlayout.core.LinearSystem r32, boolean r33, boolean r34, boolean r35, boolean r36, androidx.constraintlayout.core.SolverVariable r37, androidx.constraintlayout.core.SolverVariable r38, androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour r39, boolean r40, androidx.constraintlayout.core.widgets.ConstraintAnchor r41, androidx.constraintlayout.core.widgets.ConstraintAnchor r42, int r43, int r44, int r45, int r46, float r47, boolean r48, boolean r49, boolean r50, boolean r51, boolean r52, int r53, int r54, int r55, int r56, float r57, boolean r58) {
        /*
            Method dump skipped, instructions count: 1371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.m1578c(androidx.constraintlayout.core.LinearSystem, boolean, boolean, boolean, boolean, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i, 0);
        this.f3273o = f;
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.f3268l = constraintWidget.f3268l;
        this.f3269m = constraintWidget.f3269m;
        int[] iArr3 = constraintWidget.f3272n;
        this.f3272n = Arrays.copyOf(iArr3, iArr3.length);
        this.f3273o = constraintWidget.f3273o;
        this.f3274p = constraintWidget.f3274p;
        this.f3275q = constraintWidget.f3275q;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.f3279u.reset();
        this.f3280v.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : hashMap.get(constraintWidget.mParent);
        this.f3282x = constraintWidget.f3282x;
        this.f3283y = constraintWidget.f3283y;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.f3270mX = constraintWidget.f3270mX;
        this.f3271mY = constraintWidget.f3271mY;
        this.f3284z = constraintWidget.f3284z;
        this.f3230A = constraintWidget.f3230A;
        this.mOffsetX = constraintWidget.mOffsetX;
        this.mOffsetY = constraintWidget.mOffsetY;
        this.f3231B = constraintWidget.f3231B;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.f3232C = constraintWidget.f3232C;
        this.f3233D = constraintWidget.f3233D;
        this.f3234E = constraintWidget.f3234E;
        this.f3235F = constraintWidget.f3235F;
        this.f3236G = constraintWidget.f3236G;
        this.f3237H = constraintWidget.f3237H;
        this.f3238I = constraintWidget.f3238I;
        this.f3239J = constraintWidget.f3239J;
        this.f3240K = constraintWidget.f3240K;
        this.f3241L = constraintWidget.f3241L;
        this.f3242M = constraintWidget.f3242M;
        this.f3243N = constraintWidget.f3243N;
        this.f3244O = constraintWidget.f3244O;
        this.f3245P = constraintWidget.f3245P;
        this.f3246Q = constraintWidget.f3246Q;
        this.f3247R = constraintWidget.f3247R;
        this.f3248S = constraintWidget.f3248S;
        this.f3249T = constraintWidget.f3249T;
        this.f3251V = constraintWidget.f3251V;
        this.f3252W = constraintWidget.f3252W;
        this.f3253X = constraintWidget.f3253X;
        this.f3254Y = constraintWidget.f3254Y;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.f3255Z;
        this.f3255Z = constraintWidget2 == null ? null : hashMap.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.f3257a0;
        this.f3257a0 = constraintWidget3 != null ? hashMap.get(constraintWidget3) : null;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.f3231B > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    /* renamed from: d */
    public int m1579d(int i) {
        if (i == 0) {
            return this.f3284z;
        }
        if (i == 1) {
            return this.f3230A;
        }
        return 0;
    }

    /* renamed from: e */
    public final void m1580e(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        m1585j(sb, "      size", i, 0);
        m1585j(sb, "      min", i2, 0);
        m1585j(sb, "      max", i3, Integer.MAX_VALUE);
        m1585j(sb, "      matchMin", i5, 0);
        m1585j(sb, "      matchDef", i6, 0);
        m1584i(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    public void ensureMeasureRequested() {
        this.f3258b = true;
    }

    public void ensureWidgetRuns() {
        if (this.horizontalRun == null) {
            this.horizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.verticalRun == null) {
            this.verticalRun = new VerticalWidgetRun(this);
        }
    }

    /* renamed from: f */
    public final void m1581f(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(MapUtils.f104930a);
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        if (constraintAnchor.f3222d != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(",");
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.f3222d != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.f3222d);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    /* renamed from: g */
    public final boolean m1582g(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (C0417a.f3285a[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.f3279u;
            case 8:
                return this.f3280v;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.f3231B;
    }

    public float getBiasPercent(int i) {
        if (i == 0) {
            return this.f3232C;
        }
        if (i == 1) {
            return this.f3233D;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.f3283y;
    }

    public Object getCompanionWidget() {
        return this.f3234E;
    }

    public int getContainerItemSkip() {
        return this.f3235F;
    }

    public String getDebugName() {
        return this.f3238I;
    }

    public DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public boolean getHasBaseline() {
        return this.f3274p;
    }

    public int getHeight() {
        if (this.f3236G == 8) {
            return 0;
        }
        return this.f3283y;
    }

    public float getHorizontalBiasPercent() {
        return this.f3232C;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.f3251V;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getHorizontalMargin() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i = constraintAnchor != null ? 0 + constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i + constraintAnchor2.mMargin : i;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.f3277s;
    }

    public int getLastVerticalMeasureSpec() {
        return this.f3278t;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i) {
        if (i == 0) {
            return getWidth();
        }
        if (i == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.f3272n[1];
    }

    public int getMaxWidth() {
        return this.f3272n[0];
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public ConstraintWidget getNextChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getOptimizerWrapHeight() {
        int i;
        int i2 = this.f3283y;
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i2;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            i = Math.max(this.mMatchConstraintMinHeight, i2);
        } else {
            i = this.mMatchConstraintMinHeight;
            if (i > 0) {
                this.f3283y = i;
            } else {
                i = 0;
            }
        }
        int i3 = this.mMatchConstraintMaxHeight;
        return (i3 <= 0 || i3 >= i) ? i : i3;
    }

    public int getOptimizerWrapWidth() {
        int i;
        int i2 = this.f3282x;
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i2;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            i = Math.max(this.mMatchConstraintMinWidth, i2);
        } else {
            i = this.mMatchConstraintMinWidth;
            if (i > 0) {
                this.f3282x = i;
            } else {
                i = 0;
            }
        }
        int i3 = this.mMatchConstraintMaxWidth;
        return (i3 <= 0 || i3 >= i) ? i : i3;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public ConstraintWidget getPreviousChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getRight() {
        return getX() + this.f3282x;
    }

    public int getRootX() {
        return this.f3270mX + this.mOffsetX;
    }

    public int getRootY() {
        return this.f3271mY + this.mOffsetY;
    }

    public WidgetRun getRun(int i) {
        if (i == 0) {
            return this.horizontalRun;
        }
        if (i == 1) {
            return this.verticalRun;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append(GlideException.C1935a.f14609h + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.f3282x);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.f3283y);
        sb.append("\n");
        sb.append("    actualLeft:" + this.f3270mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.f3271mY);
        sb.append("\n");
        m1581f(sb, "left", this.mLeft);
        m1581f(sb, OneDriverConstants.TOP, this.mTop);
        m1581f(sb, gon.f71288n0, this.mRight);
        m1581f(sb, "bottom", this.mBottom);
        m1581f(sb, "baseline", this.mBaseline);
        m1581f(sb, "centerX", this.f3279u);
        m1581f(sb, "centerY", this.f3280v);
        m1580e(sb, "    width", this.f3282x, this.mMinWidth, this.f3272n[0], this.f3261e, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        m1580e(sb, "    height", this.f3283y, this.mMinHeight, this.f3272n[1], this.f3262f, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        m1587l(sb, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        m1584i(sb, "    horizontalBias", this.f3232C, DEFAULT_BIAS);
        m1584i(sb, "    verticalBias", this.f3233D, DEFAULT_BIAS);
        m1585j(sb, "    horizontalChainStyle", this.f3251V, 0);
        m1585j(sb, "    verticalChainStyle", this.f3252W, 0);
        sb.append("  }");
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.f3239J;
    }

    public float getVerticalBiasPercent() {
        return this.f3233D;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.f3252W;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVerticalMargin() {
        int i = this.mLeft != null ? 0 + this.mTop.mMargin : 0;
        return this.mRight != null ? i + this.mBottom.mMargin : i;
    }

    public int getVisibility() {
        return this.f3236G;
    }

    public int getWidth() {
        if (this.f3236G == 8) {
            return 0;
        }
        return this.f3282x;
    }

    public int getWrapBehaviorInParent() {
        return this.f3267k;
    }

    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f3270mX : ((ConstraintWidgetContainer) constraintWidget).f3295j0 + this.f3270mX;
    }

    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f3271mY : ((ConstraintWidgetContainer) constraintWidget).f3296k0 + this.f3271mY;
    }

    /* renamed from: h */
    public final void m1583h(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(constraintAnchor.f3222d);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    public boolean hasBaseline() {
        return this.f3274p;
    }

    public boolean hasDanglingDimension(int i) {
        if (i == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public boolean hasDependencies() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            if (this.mAnchors.get(i).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        return (this.f3261e == -1 && this.f3262f == -1) ? false : true;
    }

    public boolean hasResolvedTargets(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            return constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue() && (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.mTarget.getFinalValue() + this.mLeft.getMargin()) >= i2;
        }
        ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue() && (this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.mTarget.getFinalValue() + this.mTop.getMargin()) >= i2;
        return false;
    }

    /* renamed from: i */
    public final void m1584i(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, true);
    }

    public boolean isAnimated() {
        return this.f3237H;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.f3265i;
    }

    public boolean isInBarrier(int i) {
        return this.f3281w[i];
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInPlaceholder() {
        return this.f3275q;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInVirtualLayout() {
        return this.f3276r;
    }

    public boolean isMeasureRequested() {
        return this.f3258b && this.f3236G != 8;
    }

    public boolean isResolvedHorizontally() {
        return this.f3263g || (this.mLeft.hasFinalValue() && this.mRight.hasFinalValue());
    }

    public boolean isResolvedVertically() {
        return this.f3264h || (this.mTop.hasFinalValue() && this.mBottom.hasFinalValue());
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isVerticalSolvingPassDone() {
        return this.f3266j;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    /* renamed from: j */
    public final void m1585j(StringBuilder sb, String str, int i, int i2) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    /* renamed from: k */
    public final void m1586k(StringBuilder sb, ConstraintAnchor constraintAnchor, float f) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("circle : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(f);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    /* renamed from: l */
    public final void m1587l(StringBuilder sb, String str, float f, int i) {
        if (f == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f);
        sb.append(",");
        sb.append(i);
        sb.append("");
        sb.append("],\n");
    }

    /* renamed from: m */
    public final void m1588m(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        m1585j(sb, "size", i, Integer.MIN_VALUE);
        m1585j(sb, "min", i2, 0);
        m1585j(sb, "max", i3, Integer.MAX_VALUE);
        m1585j(sb, "matchMin", i5, 0);
        m1585j(sb, "matchDef", i6, 0);
        m1585j(sb, "matchPercent", i6, 1);
        sb.append("},\n");
    }

    public void markHorizontalSolvingPassDone() {
        this.f3265i = true;
    }

    public void markVerticalSolvingPassDone() {
        this.f3266j = true;
    }

    /* renamed from: n */
    public void m1589n(int i, int i2) {
        if (i2 == 0) {
            this.f3284z = i;
        } else if (i2 == 1) {
            this.f3230A = i;
        }
    }

    public boolean oppositeDimensionDependsOn(int i) {
        char c = i == 0 ? (char) 1 : (char) 0;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i];
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour3 && dimensionBehaviour2 == dimensionBehaviour3;
    }

    public boolean oppositeDimensionsTied() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.f3279u.reset();
        this.f3280v.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.f3273o = 0.0f;
        this.f3282x = 0;
        this.f3283y = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f3270mX = 0;
        this.f3271mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.f3231B = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f = DEFAULT_BIAS;
        this.f3232C = f;
        this.f3233D = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f3234E = null;
        this.f3235F = 0;
        this.f3236G = 0;
        this.f3239J = null;
        this.f3248S = false;
        this.f3249T = false;
        this.f3251V = 0;
        this.f3252W = 0;
        this.f3253X = false;
        this.f3254Y = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.f3272n;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.f3256a = false;
        this.f3268l = -1;
        this.f3269m = 1.0f;
        this.f3250U = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.f3276r = false;
        boolean[] zArr2 = this.f3281w;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f3258b = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f3261e = -1;
        this.f3262f = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.f3232C = 0.5f;
            this.f3233D = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.f3232C = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.f3233D = 0.5f;
        } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
            if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor5.reset();
            }
        } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetFinalResolution() {
        this.f3263g = false;
        this.f3264h = false;
        this.f3265i = false;
        this.f3266j = false;
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.f3279u.resetSolverVariable(cache);
        this.f3280v.resetSolverVariable(cache);
    }

    public void resetSolvingPassFlag() {
        this.f3265i = false;
        this.f3266j = false;
    }

    public StringBuilder serialize(StringBuilder sb) {
        sb.append("{\n");
        m1583h(sb, "left", this.mLeft);
        m1583h(sb, OneDriverConstants.TOP, this.mTop);
        m1583h(sb, gon.f71288n0, this.mRight);
        m1583h(sb, "bottom", this.mBottom);
        m1583h(sb, "baseline", this.mBaseline);
        m1583h(sb, "centerX", this.f3279u);
        m1583h(sb, "centerY", this.f3280v);
        m1586k(sb, this.mCenter, this.f3273o);
        m1588m(sb, "width", this.f3282x, this.mMinWidth, this.f3272n[0], this.f3261e, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        m1588m(sb, "height", this.f3283y, this.mMinHeight, this.f3272n[1], this.f3262f, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        m1587l(sb, "dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        m1584i(sb, "horizontalBias", this.f3232C, DEFAULT_BIAS);
        m1584i(sb, "verticalBias", this.f3233D, DEFAULT_BIAS);
        sb.append("}\n");
        return sb;
    }

    public void setAnimated(boolean z) {
        this.f3237H = z;
    }

    public void setBaselineDistance(int i) {
        this.f3231B = i;
        this.f3274p = i > 0;
    }

    public void setCompanionWidget(Object obj) {
        this.f3234E = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.f3235F = i;
        } else {
            this.f3235F = 0;
        }
    }

    public void setDebugName(String str) {
        this.f3238I = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.f3238I = str;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        createObjectVariable.setName(str + ".left");
        createObjectVariable2.setName(str + ".top");
        createObjectVariable3.setName(str + ".right");
        createObjectVariable4.setName(str + ".bottom");
        linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
    }

    public void setDimension(int i, int i2) {
        this.f3282x = i;
        int i3 = this.mMinWidth;
        if (i < i3) {
            this.f3282x = i3;
        }
        this.f3283y = i2;
        int i4 = this.mMinHeight;
        if (i2 < i4) {
            this.f3283y = i4;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:31:0x0087). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float f;
        int i = 0;
        if (str != null && str.length() != 0) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i2 = 0;
            int i3 = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (!substring.equalsIgnoreCase("W")) {
                    i2 = substring.equalsIgnoreCase("H") ? 1 : -1;
                }
                i3 = i2;
                i2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                String substring2 = str.substring(i2, indexOf2);
                String substring3 = str.substring(indexOf2 + 1);
                if (substring2.length() > 0 && substring3.length() > 0) {
                    float parseFloat = Float.parseFloat(substring2);
                    float parseFloat2 = Float.parseFloat(substring3);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        if (i3 == 1) {
                            f = Math.abs(parseFloat2 / parseFloat);
                        } else {
                            f = Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
                f = i;
            } else {
                String substring4 = str.substring(i2);
                if (substring4.length() > 0) {
                    f = Float.parseFloat(substring4);
                }
                f = i;
            }
            i = (f > i ? 1 : (f == i ? 0 : -1));
            if (i > 0) {
                this.mDimensionRatio = f;
                this.mDimensionRatioSide = i3;
                return;
            }
            return;
        }
        this.mDimensionRatio = 0.0f;
    }

    public void setFinalBaseline(int i) {
        if (this.f3274p) {
            int i2 = i - this.f3231B;
            int i3 = this.f3283y + i2;
            this.f3271mY = i2;
            this.mTop.setFinalValue(i2);
            this.mBottom.setFinalValue(i3);
            this.mBaseline.setFinalValue(i);
            this.f3264h = true;
        }
    }

    public void setFinalFrame(int i, int i2, int i3, int i4, int i5, int i6) {
        setFrame(i, i2, i3, i4);
        setBaselineDistance(i5);
        if (i6 == 0) {
            this.f3263g = true;
            this.f3264h = false;
        } else if (i6 == 1) {
            this.f3263g = false;
            this.f3264h = true;
        } else if (i6 == 2) {
            this.f3263g = true;
            this.f3264h = true;
        } else {
            this.f3263g = false;
            this.f3264h = false;
        }
    }

    public void setFinalHorizontal(int i, int i2) {
        if (this.f3263g) {
            return;
        }
        this.mLeft.setFinalValue(i);
        this.mRight.setFinalValue(i2);
        this.f3270mX = i;
        this.f3282x = i2 - i;
        this.f3263g = true;
    }

    public void setFinalLeft(int i) {
        this.mLeft.setFinalValue(i);
        this.f3270mX = i;
    }

    public void setFinalTop(int i) {
        this.mTop.setFinalValue(i);
        this.f3271mY = i;
    }

    public void setFinalVertical(int i, int i2) {
        if (this.f3264h) {
            return;
        }
        this.mTop.setFinalValue(i);
        this.mBottom.setFinalValue(i2);
        this.f3271mY = i;
        this.f3283y = i2 - i;
        if (this.f3274p) {
            this.mBaseline.setFinalValue(i + this.f3231B);
        }
        this.f3264h = true;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.f3270mX = i;
        this.f3271mY = i2;
        if (this.f3236G == 8) {
            this.f3282x = 0;
            this.f3283y = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i7 < (i6 = this.f3282x)) {
            i7 = i6;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i8 < (i5 = this.f3283y)) {
            i8 = i5;
        }
        this.f3282x = i7;
        this.f3283y = i8;
        int i9 = this.mMinHeight;
        if (i8 < i9) {
            this.f3283y = i9;
        }
        int i10 = this.mMinWidth;
        if (i7 < i10) {
            this.f3282x = i10;
        }
        int i11 = this.mMatchConstraintMaxWidth;
        if (i11 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f3282x = Math.min(this.f3282x, i11);
        }
        int i12 = this.mMatchConstraintMaxHeight;
        if (i12 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f3283y = Math.min(this.f3283y, i12);
        }
        int i13 = this.f3282x;
        if (i7 != i13) {
            this.f3261e = i13;
        }
        int i14 = this.f3283y;
        if (i8 != i14) {
            this.f3262f = i14;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        int i2 = C0417a.f3285a[type.ordinal()];
        if (i2 == 1) {
            this.mLeft.f3222d = i;
            return;
        }
        if (i2 == 2) {
            this.mTop.f3222d = i;
            return;
        }
        if (i2 == 3) {
            this.mRight.f3222d = i;
        } else if (i2 == 4) {
            this.mBottom.f3222d = i;
        } else {
            if (i2 != 5) {
                return;
            }
            this.mBaseline.f3222d = i;
        }
    }

    public void setHasBaseline(boolean z) {
        this.f3274p = z;
    }

    public void setHeight(int i) {
        this.f3283y = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.f3283y = i2;
        }
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public void setHorizontalBiasPercent(float f) {
        this.f3232C = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.f3251V = i;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.f3270mX = i;
        int i3 = i2 - i;
        this.f3282x = i3;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.f3282x = i4;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setInBarrier(int i, boolean z) {
        this.f3281w[i] = z;
    }

    public void setInPlaceholder(boolean z) {
        this.f3275q = z;
    }

    public void setInVirtualLayout(boolean z) {
        this.f3276r = z;
    }

    public void setLastMeasureSpec(int i, int i2) {
        this.f3277s = i;
        this.f3278t = i2;
        setMeasureRequested(false);
    }

    public void setLength(int i, int i2) {
        if (i2 == 0) {
            setWidth(i);
        } else if (i2 == 1) {
            setHeight(i);
        }
    }

    public void setMaxHeight(int i) {
        this.f3272n[1] = i;
    }

    public void setMaxWidth(int i) {
        this.f3272n[0] = i;
    }

    public void setMeasureRequested(boolean z) {
        this.f3258b = z;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setOrigin(int i, int i2) {
        this.f3270mX = i;
        this.f3271mY = i2;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setType(String str) {
        this.f3239J = str;
    }

    public void setVerticalBiasPercent(float f) {
        this.f3233D = f;
    }

    public void setVerticalChainStyle(int i) {
        this.f3252W = i;
    }

    public void setVerticalDimension(int i, int i2) {
        this.f3271mY = i;
        int i3 = i2 - i;
        this.f3283y = i3;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.f3283y = i4;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setVisibility(int i) {
        this.f3236G = i;
    }

    public void setWidth(int i) {
        this.f3282x = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.f3282x = i2;
        }
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public void setWrapBehaviorInParent(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.f3267k = i;
    }

    public void setX(int i) {
        this.f3270mX = i;
    }

    public void setY(int i) {
        this.f3271mY = i;
    }

    public void setupDimensionRatio(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f3268l == -1) {
            if (z3 && !z4) {
                this.f3268l = 0;
            } else if (!z3 && z4) {
                this.f3268l = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.f3269m = 1.0f / this.f3269m;
                }
            }
        }
        if (this.f3268l == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.f3268l = 1;
        } else if (this.f3268l == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.f3268l = 0;
        }
        if (this.f3268l == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.f3268l = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.f3269m = 1.0f / this.f3269m;
                this.f3268l = 1;
            }
        }
        if (this.f3268l == -1) {
            int i = this.mMatchConstraintMinWidth;
            if (i > 0 && this.mMatchConstraintMinHeight == 0) {
                this.f3268l = 0;
            } else {
                if (i != 0 || this.mMatchConstraintMinHeight <= 0) {
                    return;
                }
                this.f3269m = 1.0f / this.f3269m;
                this.f3268l = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.f3239J != null) {
            str = "type: " + this.f3239J + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f3238I != null) {
            str2 = "id: " + this.f3238I + " ";
        }
        sb.append(str2);
        sb.append(MotionUtils.f31761c);
        sb.append(this.f3270mX);
        sb.append(", ");
        sb.append(this.f3271mY);
        sb.append(") - (");
        sb.append(this.f3282x);
        sb.append(" x ");
        sb.append(this.f3283y);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void updateFromRuns(boolean z, boolean z2) {
        int i;
        int i2;
        boolean isResolved = z & this.horizontalRun.isResolved();
        boolean isResolved2 = z2 & this.verticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.horizontalRun;
        int i3 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.verticalRun;
        int i4 = verticalWidgetRun.start.value;
        int i5 = horizontalWidgetRun.end.value;
        int i6 = verticalWidgetRun.end.value;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (isResolved) {
            this.f3270mX = i3;
        }
        if (isResolved2) {
            this.f3271mY = i4;
        }
        if (this.f3236G == 8) {
            this.f3282x = 0;
            this.f3283y = 0;
            return;
        }
        if (isResolved) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i8 < (i2 = this.f3282x)) {
                i8 = i2;
            }
            this.f3282x = i8;
            int i10 = this.mMinWidth;
            if (i8 < i10) {
                this.f3282x = i10;
            }
        }
        if (isResolved2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i9 < (i = this.f3283y)) {
                i9 = i;
            }
            this.f3283y = i9;
            int i11 = this.mMinHeight;
            if (i9 < i11) {
                this.f3283y = i11;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z && (horizontalWidgetRun = this.horizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z && (verticalWidgetRun = this.verticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 == type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                ConstraintAnchor anchor = getAnchor(type6);
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                ConstraintAnchor anchor2 = getAnchor(type7);
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.TOP;
                ConstraintAnchor anchor3 = getAnchor(type8);
                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
                ConstraintAnchor anchor4 = getAnchor(type9);
                boolean z2 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(type6, constraintWidget, type6, 0);
                    connect(type7, constraintWidget, type7, 0);
                    z = true;
                } else {
                    z = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(type8, constraintWidget, type8, 0);
                    connect(type9, constraintWidget, type9, 0);
                } else {
                    z2 = false;
                }
                if (z && z2) {
                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                    return;
                }
                if (z) {
                    ConstraintAnchor.Type type10 = ConstraintAnchor.Type.CENTER_X;
                    getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0);
                    return;
                } else {
                    if (z2) {
                        ConstraintAnchor.Type type11 = ConstraintAnchor.Type.CENTER_Y;
                        getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor.Type type12 = ConstraintAnchor.Type.LEFT;
            if (type2 != type12 && type2 != ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                if (type2 == type13 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(type13, constraintWidget, type2, 0);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                }
                return;
            }
            connect(type12, constraintWidget, type2, 0);
            connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
            getAnchor(type15).connect(anchor8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
            getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
            getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (type != ConstraintAnchor.Type.TOP && type != ConstraintAnchor.Type.BOTTOM) {
                if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor13 = getAnchor(type5);
                    if (anchor13.getTarget() != anchor10) {
                        anchor13.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor14 = getAnchor(type14);
                    if (anchor14.isConnected()) {
                        opposite.reset();
                        anchor14.reset();
                    }
                }
            } else {
                ConstraintAnchor anchor15 = getAnchor(type20);
                if (anchor15 != null) {
                    anchor15.reset();
                }
                ConstraintAnchor anchor16 = getAnchor(type5);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(type15);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i);
        }
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    public void setFrame(int i, int i2, int i3) {
        if (i3 == 0) {
            setHorizontalDimension(i, i2);
        } else if (i3 == 1) {
            setVerticalDimension(i, i2);
        }
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f3256a = false;
        this.f3258b = true;
        this.f3259c = false;
        this.f3260d = true;
        this.f3261e = -1;
        this.f3262f = -1;
        this.frame = new WidgetFrame(this);
        this.f3263g = false;
        this.f3264h = false;
        this.f3265i = false;
        this.f3266j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f3267k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f3268l = -1;
        this.f3269m = 1.0f;
        this.f3272n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f3273o = 0.0f;
        this.f3274p = false;
        this.f3276r = false;
        this.f3277s = 0;
        this.f3278t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f3279u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f3280v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.f3281w = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.f3282x = 0;
        this.f3283y = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f3270mX = 0;
        this.f3271mY = 0;
        this.f3284z = 0;
        this.f3230A = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.f3231B = 0;
        float f = DEFAULT_BIAS;
        this.f3232C = f;
        this.f3233D = f;
        this.f3235F = 0;
        this.f3236G = 0;
        this.f3237H = false;
        this.f3238I = null;
        this.f3239J = null;
        this.f3250U = false;
        this.f3251V = 0;
        this.f3252W = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.f3255Z = null;
        this.f3257a0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        m1576a();
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.f3256a = false;
        this.f3258b = true;
        this.f3259c = false;
        this.f3260d = true;
        this.f3261e = -1;
        this.f3262f = -1;
        this.frame = new WidgetFrame(this);
        this.f3263g = false;
        this.f3264h = false;
        this.f3265i = false;
        this.f3266j = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.f3267k = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.f3268l = -1;
        this.f3269m = 1.0f;
        this.f3272n = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f3273o = 0.0f;
        this.f3274p = false;
        this.f3276r = false;
        this.f3277s = 0;
        this.f3278t = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f3279u = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.f3280v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.f3281w = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f3284z = 0;
        this.f3230A = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.f3231B = 0;
        float f = DEFAULT_BIAS;
        this.f3232C = f;
        this.f3233D = f;
        this.f3235F = 0;
        this.f3236G = 0;
        this.f3237H = false;
        this.f3238I = null;
        this.f3239J = null;
        this.f3250U = false;
        this.f3251V = 0;
        this.f3252W = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.f3255Z = null;
        this.f3257a0 = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.f3270mX = i;
        this.f3271mY = i2;
        this.f3282x = i3;
        this.f3283y = i4;
        m1576a();
    }

    public ConstraintWidget(String str, int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4);
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public ConstraintWidget(String str, int i, int i2) {
        this(i, i2);
        setDebugName(str);
    }
}
